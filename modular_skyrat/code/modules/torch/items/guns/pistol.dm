/obj/item/gun/projectile/pistol/military
	name = "military pistol"
	desc = "The Hephaestus Industries P20 - a mass produced kinetic sidearm in widespread service with the SCGDF."
	magazine_type = /obj/item/ammo_magazine/pistol/double
	allowed_magazines = /obj/item/ammo_magazine/pistol/double
	icon = 'icons/obj/guns/military_pistol.dmi'
	icon_state = "military"
	item_state = "secgundark"
	safety_icon = "safety"
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 2)
	fire_delay = 7
	ammo_indicator = TRUE

/obj/item/gun/projectile/pistol/military/alt
	desc = "The HelTek Optimus, best known as the standard-issue sidearm for the ICCG Navy."
	icon = 'icons/obj/guns/military_pistol2.dmi'
	icon_state = "military-alt"
	safety_icon = "safety"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2, TECH_ESOTERIC = 8)
	fire_delay = 8


/obj/item/gun/energy/xray/pistol
	name = "x-ray laser gun"
	icon = 'icons/obj/guns/xray_pistol.dmi'
	icon_state = "oldxray"
	item_state = "oldxray"
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3, TECH_MAGNET = 2, TECH_ESOTERIC = 2)
	projectile_type = /obj/item/projectile/beam/xray
	one_hand_penalty = 1
	w_class = ITEM_SIZE_NORMAL
	fire_delay = 10
