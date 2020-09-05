/datum/species/serpentid/get_manual_dexterity(var/mob/living/carbon/human/H)
	. = (H && H.pulling_punches) ? ..() : DEXTERITY_FULL