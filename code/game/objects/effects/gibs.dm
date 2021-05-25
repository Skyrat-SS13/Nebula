/proc/gibs(atom/location, var/datum/dna/MobDNA, gibber_type = /obj/effect/gibspawner/generic, var/fleshcolor, var/bloodcolor)
	new gibber_type(location,MobDNA,fleshcolor,bloodcolor)

/obj/effect/gibspawner
	var/sparks = 0 //whether sparks spread on Gib()
	var/list/gibtypes = list()
	var/list/gibamounts = list()
	var/list/gibdirections = list() //of lists
	var/fleshcolor //Used for gibbed humans.
	var/bloodcolor //Used for gibbed humans.
	var/datum/dna/MobDNA

/obj/effect/gibspawner/Initialize(mapload, var/datum/dna/MobDNA, var/fleshcolor, var/bloodcolor)
	..(mapload)

	if(fleshcolor) src.fleshcolor = fleshcolor
	if(bloodcolor) src.bloodcolor = bloodcolor
	if(MobDNA)     src.MobDNA = MobDNA
	Gib(loc)
	return INITIALIZE_HINT_QDEL

/obj/effect/gibspawner/proc/Gib(atom/location)
	if(gibtypes.len != gibamounts.len || gibamounts.len != gibdirections.len)
		log_error("<span class='warning'>Gib list length mismatch!</span>")
		return

	if(sparks)
		spark_at(location, amount = 2, cardinal_only = TRUE)

	var/obj/effect/decal/cleanable/blood/gibs/gib = null
	for(var/i = 1, i<= gibtypes.len, i++)
		if(gibamounts[i])
			for(var/j = 1, j<= gibamounts[i], j++)
				var/gibType = gibtypes[i]
				gib = new gibType(location)

				// Apply human species colouration to masks.
				if(fleshcolor)
					gib.fleshcolor = fleshcolor
				if(bloodcolor)
					gib.basecolor = bloodcolor

				gib.update_icon()

				gib.blood_DNA = list()
				if(MobDNA)
					gib.blood_DNA[MobDNA.unique_enzymes] = MobDNA.b_type
				else if(istype(src, /obj/effect/gibspawner/human)) // Probably a monkey
					gib.blood_DNA["Non-human DNA"] = "A+"
				if(istype(location,/turf/))
					var/list/directions = gibdirections[i]
					if(directions.len)
						gib.streak(directions)