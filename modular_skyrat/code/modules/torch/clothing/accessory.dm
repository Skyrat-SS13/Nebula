
/obj/item/clothing/accessory/badge/agent
	name = "\improper SFP Agent's badge"
	desc = "A leather-backed gold badge displaying the crest of the Sol Federal Police."
	icon_state = "agentbadge"
	slot_flags = SLOT_BELT | SLOT_TIE | SLOT_MASK
	slot = ACCESSORY_SLOT_INSIGNIA
	badge_string = FACTION_SPACECOPS
	icon = 'modular_skyrat/icons/obj/clothing/obj_accessories.dmi'
	accessory_icons = list(slot_w_uniform_str = 'modular_skyrat/icons/mob/onmob/onmob_accessories.dmi', slot_wear_suit_str = 'modular_skyrat/icons/mob/onmob/onmob_accessories.dmi')

/obj/item/clothing/accessory/storage/pouches/navy
	desc = "A collection of navy blue pouches that can be attached to a plate carrier. Carries up to two items."
	icon_state = "pouches_navy"
	icon = 'modular_skyrat/icons/obj/clothing/obj_accessories.dmi'
	accessory_icons = list(slot_w_uniform_str = 'modular_skyrat/icons/mob/onmob/onmob_accessories.dmi', slot_wear_suit_str = 'modular_skyrat/icons/mob/onmob/onmob_accessories.dmi')

/obj/item/clothing/accessory/storage/pouches/green
	desc = "A collection of green pouches that can be attached to a plate carrier. Carries up to two items."
	icon_state = "pouches_green"
	icon_override = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi'
	icon = 'modular_skyrat/icons/obj/clothing/obj_suit_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi')

/obj/item/clothing/accessory/storage/pouches/tan
	desc = "A collection of tan pouches that can be attached to a plate carrier. Carries up to two items."
	icon_state = "pouches_tan"
	icon_override = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi'
	icon = 'modular_skyrat/icons/obj/clothing/obj_suit_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi')

/obj/item/clothing/accessory/storage/pouches/large/navy
	desc = "A collection of navy blue pouches that can be attached to a plate carrier. Carries up to four items."
	icon_state = "lpouches_navy"
	icon_override = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi'
	icon = 'modular_skyrat/icons/obj/clothing/obj_suit_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi')

/obj/item/clothing/accessory/storage/pouches/large/green
	desc = "A collection of green pouches that can be attached to a plate carrier. Carries up to four items."
	icon_state = "lpouches_green"
	icon_override = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi'
	icon = 'modular_skyrat/icons/obj/clothing/obj_suit_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi')

/obj/item/clothing/accessory/storage/pouches/large/tan
	desc = "A collection of tan pouches that can be attached to a plate carrier. Carries up to four items."
	icon_state = "lpouches_tan"
	icon_override = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi'
	icon = 'modular_skyrat/icons/obj/clothing/obj_suit_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi')

/obj/item/clothing/accessory/storage/pouches/blue
	desc = "A collection of blue pouches that can be attached to a plate carrier. Carries up to two items."
	icon_state = "pouches_blue"
	icon_override = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi'
	icon = 'modular_skyrat/icons/obj/clothing/obj_suit_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi')

/obj/item/clothing/accessory/armguards/blue
	desc = "A pair of blue arm pads reinforced with armor plating. Attaches to a plate carrier."
	icon_state = "armguards_blue"
	icon = 'modular_skyrat/icons/obj/clothing/obj_accessories.dmi'
	accessory_icons = list(slot_w_uniform_str = 'modular_skyrat/icons/mob/onmob/onmob_accessories.dmi', slot_wear_suit_str = 'modular_skyrat/icons/mob/onmob/onmob_accessories.dmi')

/obj/item/clothing/accessory/badge/tags/skrell
	name = "\improper Skrellian holobadge"
	desc = "A high tech Skrellian holobadge, designed to project information about the owner."
	icon_state = "skrell_badge"
	badge_string = null	//Will be the name of the SDTF.
	icon = 'modular_skyrat/icons/obj/clothing/obj_accessories.dmi'
	accessory_icons = list(slot_w_uniform_str = 'modular_skyrat/icons/mob/onmob/onmob_accessories.dmi', slot_wear_suit_str = 'modular_skyrat/icons/mob/onmob/onmob_accessories.dmi')

/obj/item/clothing/accessory/badge/tags/skrell/set_desc(var/mob/living/carbon/human/H)
	if(!istype(H))
		return
	desc = "Blood type: [H.b_type]"
	
/obj/item/clothing/accessory/badge/tags/skrell/verb/set_sdtf()
	set name = "Set SDTF Name"
	set category = "Object"
	set src in usr
	
	if(usr.incapacitated())
		to_chat(usr, "<span class='warning'>You're unable to do that.</span>")
		return
	
	var/obj/item/in_hand = usr.get_active_hand()
	if(in_hand != src)
		to_chat(usr, "<span class='warning'>You have to be holding [src] to modify it.</span>")
		return
	
	badge_string = sanitize(input(usr, "Input your SDTF.", "SDTF Holobadge") as null|text, MAX_NAME_LEN)
	
	if(usr.incapacitated())	//Because things can happen while you're typing
		to_chat(usr, "<span class='warning'>You're unable to do that.</span>")
		return
	in_hand = usr.get_active_hand()
	if(in_hand != src)
		to_chat(usr, "<span class='warning'>You have to be holding [src] to modify it.</span>")
		return
		
	if(badge_string)
		set_name(usr.real_name)
		set_desc(usr)
		verbs -= /obj/item/clothing/accessory/badge/tags/skrell/verb/set_sdtf

/obj/item/clothing/accessory/armor/helmcover/nt
	name = "white helmet cover"
	desc = "A fabric cover for armored helmets. This one is white."
	icon_state = "helmcover_nt"
	icon_override = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi'
	icon = 'modular_skyrat/icons/obj/clothing/obj_suit_modular_armor.dmi'
	accessory_icons = list(slot_tie_str = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi', slot_wear_suit_str = 'modular_skyrat/icons/mob/onmob/onmob_modular_armor.dmi')
	
