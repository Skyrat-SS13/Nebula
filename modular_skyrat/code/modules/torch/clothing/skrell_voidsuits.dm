//Skrell space gear. Sleek like a wetsuit.
/obj/item/clothing/head/helmet/space/void/skrell
	name = "Skrellian helmet"
	desc = "Smoothly contoured and polished to a shine. Still looks like a fishbowl."
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_STRONG,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	max_heat_protection_temperature = SPACE_SUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	//species_restricted = list(SPECIES_SKRELL,SPECIES_HUMAN) //TODO BODYTYPES
	icon = 'modular_skyrat/icons/obj/clothing/obj_head.dmi'
	item_icons = list(
		slot_l_hand_str = 'modular_skyrat/icons/mob/onmob/items/lefthand_hats.dmi',
		slot_r_hand_str = 'modular_skyrat/icons/mob/onmob/items/righthand_hats.dmi',
		slot_head_str = 'modular_skyrat/icons/mob/onmob/onmob_head.dmi'
		)

/obj/item/clothing/head/helmet/space/void/skrell/white
	icon_state = "skrell_helmet_white"

/obj/item/clothing/head/helmet/space/void/skrell/black
	icon_state = "skrell_helmet_black"

/obj/item/clothing/suit/space/void/skrell
	name = "Skrellian voidsuit"
	desc = "Seems like a wetsuit with reinforced plating seamlessly attached to it. Very chic."
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_STRONG,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	allowed = list(/obj/item/flashlight,/obj/item/tank,/obj/item/storage/ore,/obj/item/t_scanner,/obj/item/pickaxe, /obj/item/rcd)
	heat_protection = SLOT_UPPER_BODY|SLOT_LOWER_BODY|SLOT_LEGS|SLOT_FEET|SLOT_ARMS|SLOT_HANDS
	max_heat_protection_temperature = SPACE_SUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	//species_restricted = list(SPECIES_SKRELL,SPECIES_HUMAN) //TODO BODYTYPES
	icon = 'modular_skyrat/icons/obj/clothing/obj_suit.dmi'
	item_icons = list(slot_wear_suit_str = 'modular_skyrat/icons/mob/onmob/onmob_suit.dmi')

/obj/item/clothing/suit/space/void/skrell/white
	icon_state = "skrell_suit_white"

/obj/item/clothing/suit/space/void/skrell/black
	icon_state = "skrell_suit_black"

/obj/item/clothing/head/helmet/space/fishbowl
	name = "spacesuit helmet"
	desc = "A special helmet designed for work in a hazardous, low-pressure environment. The tinting can be toggled for flash protection at the cost of worse visibility."
	icon_state = "spacebowl"
	light_overlay = "yellow_light"
	tinted = FALSE
	icon = 'modular_skyrat/icons/obj/clothing/obj_head.dmi'
	item_icons = list(
		slot_l_hand_str = 'modular_skyrat/icons/mob/onmob/items/lefthand_hats.dmi',
		slot_r_hand_str = 'modular_skyrat/icons/mob/onmob/items/righthand_hats.dmi',
		slot_head_str = 'modular_skyrat/icons/mob/onmob/onmob_head.dmi'
		)
