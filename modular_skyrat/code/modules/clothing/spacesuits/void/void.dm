//Override upstream's voidsuit stuff here

/*
//This override is to allow our snowflake species to use voidsuits. Keep this updated with whatever new species you add.
/obj/item/clothing/head/helmet/space/void/Initialize()
	. = ..()
	sprite_sheets |= list(
		SPECIES_AKULA = 'modular_skyrat/icons/mob/onmob/onmob_head.dmi',
		SPECIES_VULP = 'modular_skyrat/icons/mob/onmob/onmob_head.dmi',
		SPECIES_VASS = 'modular_skyrat/icons/mob/onmob/onmob_head.dmi',
		SPECIES_TAJ = 'modular_skyrat/icons/mob/onmob/onmob_head.dmi',
		SPECIES_OLDUNATHI = 'modular_skyrat/icons/mob/onmob/onmob_head.dmi',
		SPECIES_HUMAN2 = 'modular_skyrat/icons/mob/onmob/onmob_head.dmi'
		)
	sprite_sheets_obj |= list(
		SPECIES_AKULA = 'modular_skyrat/icons/obj/clothing/obj_head.dmi',
		SPECIES_VULP = 'modular_skyrat/icons/obj/clothing/obj_head.dmi',
		SPECIES_VASS = 'modular_skyrat/icons/obj/clothing/obj_head.dmi',
		SPECIES_TAJ = 'modular_skyrat/icons/obj/clothing/obj_head.dmi',
		SPECIES_OLDUNATHI = 'modular_skyrat/icons/obj/clothing/obj_head.dmi',
		SPECIES_HUMAN2 = 'modular_skyrat/icons/obj/clothing/obj_head.dmi'
		)

/obj/item/clothing/suit/space/void/Initialize()
	. = ..()
	sprite_sheets = list(
		SPECIES_AKULA = 'modular_skyrat/icons/mob/onmob/onmob_suit.dmi',
		SPECIES_VULP = 'modular_skyrat/icons/mob/onmob/onmob_suit.dmi',
		SPECIES_VASS = 'modular_skyrat/icons/mob/onmob/onmob_suit.dmi',
		SPECIES_TAJ = 'modular_skyrat/icons/mob/onmob/onmob_suit.dmi',
		SPECIES_OLDUNATHI = 'modular_skyrat/icons/mob/onmob/onmob_suit.dmi',
		SPECIES_HUMAN2 = 'modular_skyrat/icons/mob/onmob/onmob_suit.dmi'
		)
	sprite_sheets_obj = list(
		SPECIES_AKULA = 'modular_skyrat/icons/obj/clothing/obj_suit.dmi',
		SPECIES_VULP = 'modular_skyrat/icons/obj/clothing/obj_suit.dmi',
		SPECIES_VASS = 'modular_skyrat/icons/obj/clothing/obj_suit.dmi',
		SPECIES_TAJ = 'modular_skyrat/icons/obj/clothing/obj_suit.dmi',
		SPECIES_OLDUNATHI = 'modular_skyrat/icons/obj/clothing/obj_suit.dmi',
		SPECIES_HUMAN2 = 'modular_skyrat/icons/obj/clothing/obj_suit.dmi'
		)

/* SHIT DOESNT WORK FOR WHATEVER REASON ITS CURSED
/obj/item/clothing/head/helmet/space/void/excavation	//This fixes a literal year-old bug from upstream. Should probably bring it to bay directly but eh.
	icon = 'modular_mithra/icons/mob/onmob/head.dmi'	//This .dmi consists of only one thing: the properly renamed iconstate of the excavation helmet.
*/
*/