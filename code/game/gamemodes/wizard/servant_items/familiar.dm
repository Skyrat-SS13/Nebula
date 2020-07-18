/obj/item/clothing/head/bandana/familiarband
	name = "familiar's headband"
	desc = "It's a simple headband made of leather."
<<<<<<< HEAD
	icon_state = "familiarband"

=======
	icon_state = ICON_STATE_WORLD
	icon = 'icons/clothing/head/familiar.dmi'
>>>>>>> 08661574e3... Merge pull request #698 from comma/devfix
/obj/item/clothing/under/familiargarb
	name = "familiar's garb"
	desc = "It looks like a cross between Robin Hood's tunic and some patchwork leather armor. Whoever put this together must have been in a hurry."
	icon_state = "familiartunic"
	armor = list(
		melee = ARMOR_MELEE_KNIVES, 
		laser = ARMOR_LASER_MINOR, 
		energy = ARMOR_ENERGY_SMALL
	)
	bodytype_restricted = list(BODYTYPE_HUMANOID)

/obj/item/clothing/under/familiargard/Initialize()
	. = ..()
	slowdown_per_slot[slot_w_uniform] = -3