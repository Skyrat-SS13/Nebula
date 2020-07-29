/obj/item/clothing/shoes/dutyboots
	name = "duty boots"
	desc = "A pair of steel-toed synthleather boots with a mirror shine."
	icon_state = "duty"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		rad = ARMOR_RAD_MINOR
		)
	siemens_coefficient = 0.7
	gas_transfer_coefficient = 0.90
	permeability_coefficient = 0.50
	body_parts_covered = FEET
	heat_protection = FEET
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = FIRESUIT_MAX_PRESSURE
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/tactical
	name = "tactical boots"
	desc = "Tan boots with extra padding and armor."
	icon_state = "desert"
	force = 3
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_RESISTANT)
	siemens_coefficient = 0.7
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/dress
	name = "dress shoes"
	desc = "The height of fashion, and they're pre-polished!"
	icon_state = "laceups"
	can_add_hidden_item = FALSE
	can_add_cuffs = FALSE
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')
	item_icons = list(slot_wear_suit_str = 'modular_skyrat/icons/mob/onmob/onmob_suit.dmi')

/obj/item/clothing/shoes/dress/white
	name = "white dress shoes"
	desc = "Brilliantly white shoes, not a spot on them."
	icon_state = "whitedress"
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/sandal
	desc = "A pair of rather plain, wooden sandals."
	name = "sandals"
	icon_state = "wizard"
	//species_restricted = null
	body_parts_covered = 0
	wizard_garb = 1
	can_add_hidden_item = FALSE
	can_add_cuffs = FALSE
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/sandal/marisa
	desc = "A pair of magic, black shoes."
	name = "magic shoes"
	icon_state = "black"
	body_parts_covered = FEET
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/cult
	name = "boots"
	desc = "A pair of boots worn by the followers of Nar-Sie."
	icon_state = "cult"
	item_state = "cult"
	force = 2
	siemens_coefficient = 0.7

	cold_protection = FEET
	min_cold_protection_temperature = SHOE_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = FEET
	max_heat_protection_temperature = SHOE_MAX_HEAT_PROTECTION_TEMPERATURE
	//species_restricted = null
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/cyborg
	name = "cyborg boots"
	desc = "Shoes for a cyborg costume."
	icon_state = "boots"
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/slippers
	name = "bunny slippers"
	desc = "Fluffy!"
	icon_state = "slippers"
	item_state = "slippers"
	force = 0
	//species_restricted = null
	w_class = ITEM_SIZE_SMALL
	can_add_hidden_item = FALSE
	can_add_cuffs = FALSE
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/slippers/worn
	name = "worn bunny slippers"
	desc = "Fluffy..."
	icon_state = "slippers_worn"
	item_state = "slippers_worn"
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/laceup
	name = "laceup shoes"
	desc = "The height of fashion, and they're pre-polished!"
	icon_state = "laceups"
	can_add_hidden_item = FALSE
	can_add_cuffs = FALSE
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/athletic
	name = "athletic shoes"
	desc = "A pair of sleek atheletic shoes. Made by and for the sporty types."
	icon_state = "sportshoe"
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/laceup/sneakies
	desc = "The height of fashion, and they're pre-polished. Upon further inspection, the soles appear to be on backwards. They look uncomfortable."
	//species_restricted = list(SPECIES_HUMAN, SPECIES_IPC)
	move_trail = /obj/effect/decal/cleanable/blood/tracks/footprints/reversed
	item_flags = ITEM_FLAG_SILENT

/obj/item/clothing/shoes/heels
	name = "high heels"
	icon_state = "heels"
	desc = "A pair of colourable high heels."
	can_add_cuffs = FALSE
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/heels/black
	name = "black high heels"
	desc = "A pair of black high heels."
	color = COLOR_GRAY15
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

obj/item/clothing/shoes/heels/red
	name = "red high heels"
	desc = "A pair of red high heels."
	color = COLOR_RED
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/white
	name = "white shoes"
	icon_state = "white"
	permeability_coefficient = 0.01
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/black
	name = "black shoes"
	icon_state = "black"
	desc = "A pair of black shoes."
	cold_protection = FEET
	min_cold_protection_temperature = SHOE_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = FEET
	max_heat_protection_temperature = SHOE_MAX_HEAT_PROTECTION_TEMPERATURE
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/jackboots/unathi
	name = "toe-less jackboots"
	desc = "Modified pair of jackboots, particularly comfortable for those species whose toes hold claws."
	item_state = "digiboots"
	icon_state = "digiboots"
	//species_restricted = null
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/jungleboots
	name = "jungle boots"
	desc = "A pair of durable brown boots. Waterproofed for use planetside."
	icon_state = "jungle"
	force = 3
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_MINOR
		)
	siemens_coefficient = 0.7
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')


/obj/item/clothing/shoes/brown
	name = "brown shoes"
	desc = "A pair of brown shoes."
	icon_state = "brown"
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

/obj/item/clothing/shoes/orange
	name = "orange shoes"
	icon_state = "orange"
	icon = 'modular_skyrat/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'modular_skyrat/icons/mob/onmob/onmob_feet.dmi')

