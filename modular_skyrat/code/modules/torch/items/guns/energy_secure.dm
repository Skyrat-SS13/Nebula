GLOBAL_LIST_INIT(secure_weapons, list())

/obj/item/gun/energy/gun/small/secure
	name = "compact smartgun"
	desc = "Combining the two LAEP90 variants, the secure and compact LAEP90-CS is the next best thing to keeping your security forces on a literal leash."
	icon = 'modular_skyrat/icons/obj/guns/small_egun_secure.dmi'
	icon_state = "smallgunstun"
	item_state = "smallgunstun"
	item_icons = list(
		slot_l_hand_str = 'modular_skyrat/icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'modular_skyrat/icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	req_access = list(list(access_brig, access_bridge))
	authorized_modes = list(ALWAYS_AUTHORIZED, AUTHORIZED)

/obj/item/gun/energy/stunrevolver/secure
	name = "smart stun revolver"
	desc = "This A&M X6 is fitted with an NT1019 chip which allows remote authorization of weapon functionality. It has an SCG emblem on the grip."
	icon = 'modular_skyrat/icons/obj/guns/stunrevolver_secure.dmi'
	icon_state = "revolverstun100"
	modifystate= "revolverstun"
	item_icons = list(
		slot_l_hand_str = 'modular_skyrat/icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'modular_skyrat/icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	item_state = null
	req_access = list(list(access_brig, access_bridge))

/obj/item/gun/energy/gun/secure
	name = "smartgun"
	desc = "A more secure LAEP90, the LAEP90-S is designed to please paranoid constituents. Body cam not included."
	icon = 'modular_skyrat/icons/obj/guns/energy_gun_secure.dmi'
	icon_state = "energystun"
	item_state = "energystun"
	item_icons = list(
		slot_l_hand_str = 'modular_skyrat/icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'modular_skyrat/icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	item_state = null	//so the human update icon uses the icon_state instead.
	req_access = list(list(access_brig, access_bridge))
	authorized_modes = list(ALWAYS_AUTHORIZED, AUTHORIZED)

/obj/item/gun/energy/gun/secure/preauthorized
	authorized_modes = list(ALWAYS_AUTHORIZED, AUTHORIZED, AUTHORIZED)

/obj/item/gun/energy/revolver/secure
	name = "smart service revolver"
	desc = "The LAER680-S, a standard issue service revolver commonly used by higher ranking offcers among the SCG. Fitted with an NT1019 chip which allows remote authorization of the weapon's functionality."
	icon = 'modular_skyrat/icons/obj/guns/energy_revolver.dmi'
	icon_state = "energyrevolverstun100"
	item_icons = list(
		slot_l_hand_str = 'modular_skyrat/icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'modular_skyrat/icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	modifystate = "energyrevolverstun"
	item_state = null
	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="energyrevolverstun"),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock, modifystate="energyrevolvershock"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam, modifystate="energyrevolverkill"),
		)
	req_access = list(list(access_brig, access_heads))
	authorized_modes = list(ALWAYS_AUTHORIZED, AUTHORIZED)

/obj/item/gun/energy/gun/secure/mounted
	name = "robot energy gun"
	desc = "A robot-mounted equivalent of the LAEP90-S, which is always registered to its owner."
	self_recharge = 1
	use_external_power = 1
	one_hand_penalty = 0
	has_safety = FALSE
	item_flags = ITEM_FLAG_INVALID_FOR_CHAMELEON

/obj/item/gun/energy/gun/secure/mounted/Initialize()
	var/mob/borg = get_holder_of_type(src, /mob/living/silicon/robot)
	if(!borg)
		CRASH("Invalid spawn location.")
	registered_owner = borg.name
	GLOB.secure_weapons |= src
	. = ..()

/obj/item/gun/energy/laser/secure
	name = "laser carbine"
	desc = "A Hephaestus Industries G40E carbine, designed to kill with concentrated energy blasts. Fitted with an NT1019 chip to make sure killcount is tracked appropriately."
	icon_state = "lasersec"
	req_access = list(list(access_brig, access_bridge))

/obj/item/gun/energy/gun/skrell
	name = "skrellian handgun"
	desc = "A common Skrellian side-arm, the Xuxquu*'Voom-5, or XV-5, is a more traditional energy weapon, tuned to dispense beams in three different wavelengths."
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	icon = 'modular_skyrat/icons/obj/guns/skrell_pistol.dmi'
	icon_state = "skrell_pistol_stun_100"
	max_shots = 10
	fire_delay = 6
	one_hand_penalty = 1
	self_recharge = 1

	projectile_type = /obj/item/projectile/beam/stun
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 5, TECH_POWER = 3)
	modifystate = "skrell_pistol_stun"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="skrell_pistol_stun"),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock, modifystate="skrell_pistol_shock"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam, modifystate="skrell_pistol_kill"),
		)

/obj/item/gun/energy/taser/carbine
	name = "electrolaser carbine"
	desc = "The NT Mk44 NL is a high capacity gun used for non-lethal takedowns. It can switch between high and low intensity stun shots."
	icon = 'modular_skyrat/icons/obj/guns/taser_carbine.dmi'
	icon_state = "tasercarbine"
	w_class = ITEM_SIZE_LARGE
	slot_flags = SLOT_BELT|SLOT_BACK
	one_hand_penalty = 3
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3, TECH_POWER = 3)
	force = 8
	max_shots = 10
	accuracy = 1
	projectile_type = /obj/item/projectile/beam/stun/heavy
	wielded_item_state = "tasercarbine-wielded"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun/heavy),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock/heavy),
		)

/obj/item/gun/energy/ionrifle/small
	name = "ion pistol"
	desc = "The NT Mk72 EW Preston is a personal defense weapon designed to disable mechanical threats."
	icon = 'modular_skyrat/icons/obj/guns/ion_pistol.dmi'
	icon_state = "ionpistol"
	item_state = "ionpistol"
	origin_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 4)
	w_class = ITEM_SIZE_NORMAL
	force = 5
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	one_hand_penalty = 0
	charge_cost = 20
	max_shots = 4
	projectile_type = /obj/item/projectile/ion/small
