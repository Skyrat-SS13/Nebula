/obj/item/ammo_magazine/pistol/double
	name = "doublestack pistol magazine"
	icon_state = "pistol"
	matter = list(/decl/material/solid/metal/steel = 1050)
	max_ammo = 15

/obj/item/ammo_magazine/pistol/double/rubber
	labels = list("rubber")
	ammo_type = /obj/item/ammo_casing/pistol/rubber

/obj/item/ammo_magazine/pistol/double/practice
	labels = list("practice")
	ammo_type = /obj/item/ammo_casing/pistol/practice

/obj/item/ammo_magazine/pistol/small
	icon_state = "holdout"
	matter = list(/decl/material/solid/metal/steel = 480)
	caliber = CALIBER_PISTOL_SMALL
	ammo_type = /obj/item/ammo_casing/pistol/small
	max_ammo = 8

/obj/item/ammo_magazine/pistol/small/empty
	initial_ammo = 0

/obj/item/ammo_magazine/box/machinegun
	name = "magazine box"
	icon_state = "machinegun"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_RIFLE
	matter = list(MATERIAL_STEEL = 4500)
	ammo_type = /obj/item/ammo_casing/rifle
	max_ammo = 50
	multiple_sprites = 1

/obj/item/ammo_magazine/box/machinegun/empty
	initial_ammo = 0