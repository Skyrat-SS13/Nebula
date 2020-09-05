/datum/species/unathi/yeosa
	name = SPECIES_YEOSA
	name_plural = SPECIES_YEOSA

	genders = list(MALE, FEMALE, PLURAL)

	unarmed_attacks = list(/decl/natural_attack/stomp, /decl/natural_attack/tail, /decl/natural_attack/claws, /decl/natural_attack/punch/venom, /decl/natural_attack/bite/sharp, /decl/natural_attack/bite/venom)
	darksight_range = 5
	darksight_tint = DARKTINT_GOOD
	slowdown = 0.4
	brute_mod = 0.85
	flash_mod = 1.4
	blood_volume = 700
	water_soothe_amount = 5
	description = "A heavily aquatic offshoot of the Sinta species, Yeosa originally hail from the \
	Salt Swamps, leaving their former home for unclear reasons.<br/><br/>Now dwelling in the islands and seas, \
	their culture has diverged majorly from the Sinta, spending less time performing acts of violence and more time socializing. \
	Their biology is heavily attuned to surviving Moghes' dangerous waters, including gills, fins, and a venomous bite."

	base_auras = list(
		/obj/aura/regenerating/human/unathi/yeosa
		)

	additional_available_cultural_info = list(
		TAG_FACTION = list(
			FACTION_UNATHI_YEOSA
		)
	)

	default_cultural_info = list(TAG_FACTION = FACTION_UNATHI_YEOSA)

	has_organ = list(
		BP_HEAD =     /obj/item/organ/external/head/yeosa,
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_LUNGS =    /obj/item/organ/internal/lungs/gills,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_EYES =     /obj/item/organ/internal/eyes
		)

