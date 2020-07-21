/datum/hud
	var/list/plane_masters = list()

/datum/hud/New(mob/owner)
	. = ..()
	for(var/mytype in subtypesof(/obj/screen/plane_master))
		var/obj/screen/plane_master/instance
		if(initial(instance.plane) == OBSERVER_PLANE) //Special case because that's being used by a global for some reasons
			continue
		instance = new mytype()
		plane_masters["[instance.plane]"] = instance
		instance.backdrop(mymob)
	plane_masters_update()

/datum/hud/proc/plane_masters_update()
	// Plane masters are always shown to OUR mob, never to observers
	for(var/thing in plane_masters)
		var/obj/screen/plane_master/PM = plane_masters[thing]
		PM.backdrop(mymob)
		mymob.client.screen += PM

/datum/hud/Destroy()
	QDEL_LIST_ASSOC_VAL(plane_masters)
	return ..()