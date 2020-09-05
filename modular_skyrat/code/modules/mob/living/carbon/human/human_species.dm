/mob/living/carbon/human/skrell/New(var/new_loc)
	h_style = "Skrell Male Tentacles"
	..(new_loc,SPECIES_SKRELL)

/mob/living/carbon/human/unathi/New(var/new_loc)
	h_style = "Unathi Horns"
	..(new_loc,SPECIES_UNATHI)

/mob/living/carbon/human/vox/New(var/new_loc)
	h_style = "Long Vox Quills"
	..(new_loc,SPECIES_VOX)

/mob/living/carbon/human/diona/New(var/new_loc)
	..(new_loc,SPECIES_DIONA)
