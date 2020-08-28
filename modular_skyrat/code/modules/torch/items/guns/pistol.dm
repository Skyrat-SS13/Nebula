/obj/item/gun/projectile/pistol/military
	name = "military pistol"
	desc = "The Hephaestus Industries P20 - a mass produced kinetic sidearm in widespread service with the SCGDF."
	magazine_type = /obj/item/ammo_magazine/pistol/double
	allowed_magazines = /obj/item/ammo_magazine/pistol/double
	icon = 'modular_skyrat/icons/obj/guns/military_pistol.dmi'
	icon_state = "military"
	item_state = "secgundark"
	safety_icon = "safety"
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 2)
	fire_delay = 7
	ammo_indicator = TRUE

/obj/item/gun/projectile/pistol/military/alt
	desc = "The HelTek Optimus, best known as the standard-issue sidearm for the ICCG Navy."
	icon = 'modular_skyrat/icons/obj/guns/military_pistol2.dmi'
	icon_state = "military-alt"
	safety_icon = "safety"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2, TECH_ESOTERIC = 8)
	fire_delay = 8


/obj/item/gun/energy/xray/pistol
	name = "x-ray laser gun"
	icon = 'modular_skyrat/icons/obj/guns/xray_pistol.dmi'
	icon_state = "oldxray"
	item_state = "oldxray"
	slot_flags = SLOT_HOLSTER
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3, TECH_MAGNET = 2, TECH_ESOTERIC = 2)
	projectile_type = /obj/item/projectile/beam/xray
	one_hand_penalty = 1
	w_class = ITEM_SIZE_NORMAL
	fire_delay = 10

/obj/item/gun/energy/stunrevolver/rifle
	name = "stun rifle"
	desc = "An A&M X10 Thor. A vastly oversized variant of the A&M X6 Zeus. Fires overcharged electrodes to obliterate pain receptors without harming them too much."
	icon = 'modular_skyrat/icons/obj/guns/stunrifle.dmi'
	icon_state = "stunrifle"
	item_state = "stunrifle"
	w_class = ITEM_SIZE_HUGE
	slot_flags = SLOT_BACK
	one_hand_penalty = 6
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3, TECH_POWER = 3)
	force = 10
	max_shots = 5
	accuracy = 2
	projectile_type = /obj/item/projectile/energy/electrode/stunshot
	wielded_item_state = "stunrifle-wielded"
