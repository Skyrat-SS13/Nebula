/obj/item/clothing/head/helmet/nt
	name = "\improper corporate security helmet"
	desc = "A helmet with 'CORPORATE SECURITY' printed on the back in red lettering."
	icon_state = "helmet_nt"

/obj/item/clothing/head/helmet/pcrc
	name = "\improper PCRC helmet"
	desc = "A helmet with 'PRIVATE SECURITY' printed on the back in cyan lettering."
	icon_state = "helmet_pcrc"

/obj/item/clothing/head/helmet/nt/guard
	starting_accessories = list(/obj/item/clothing/accessory/armor/helmcover/nt)

//Non-hardsuit ERT helmets.
//Commander
/obj/item/clothing/head/helmet/ert
	name = "asset protection command helmet"
	desc = "An in-atmosphere helmet worn by many corporate and private asset protection forces. Has blue highlights."
	icon_state = "erthelmet_cmd"
	valid_accessory_slots = null
	item_state_slots = list(
		slot_l_hand_str = "syndicate-helm-green",
		slot_r_hand_str = "syndicate-helm-green",
		)
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BIO_MINOR
		)

//Security
/obj/item/clothing/head/helmet/ert/security
	name = "asset protection security helmet"
	desc = "An in-atmosphere helmet worn by many corporate and private asset protection forces. Has red highlights."
	icon_state = "erthelmet_sec"

//Engineer
/obj/item/clothing/head/helmet/ert/engineer
	name = "asset protection engineering helmet"
	desc = "An in-atmosphere helmet worn by many corporate and private asset protection forces. Has orange highlights."
	icon_state = "erthelmet_eng"

//Medical
/obj/item/clothing/head/helmet/ert/medical
	name = "asset protection medical helmet"
	desc = "An in-atmosphere helmet worn by many corporate and private asset protection forces. Has red and white highlights."
	icon_state = "erthelmet_med"

/obj/item/clothing/head/helmet/nt/pilot
	name = "corporate pilot's helmet"
	desc = "A corporate pilot's helmet for operating the cockpit in style for a hefty paycheck."
	icon_state = "pilotnt"

/obj/item/clothing/head/helmet/skrell
	name = "skrellian helmet"
	desc = "A helmet built for use by a Skrell. This one appears to be fairly standard and reliable."
	icon_state = "helmet_skrell"
	valid_accessory_slots = null


/obj/item/clothing/head/hardhat/damage_control/Yellow
	name = "senior damage control helmet"
	icon_state = "Damage-Control-Helmet-Yellow"

/obj/item/clothing/head/hardhat/damage_control/White
	name = "chief damage control helmet"
	icon_state = "Damage-Control-Helmet-White"

/obj/item/clothing/head/hardhat/damage_control/EMB
	name = "\improper Emergency Management Bureau helmet"
	desc = "The helmet currently issued by the emergency management bureau, commonly used by engineers and first responders throughout the human space. Comes with a built-in flashlight."
	icon_state = "Damage-Control-Helmet-EMB"

/obj/item/clothing/head/hardhat/damage_control/EMB_Ancient
	name = "ancient red EMB helmet"
	desc = "This helmet used to be issued by the emergency management bureau once upon a time, and is still being used in frontier systems. Comes with a built-in flashlight."
	icon_state = "EMB-ancient-red"
	light_overlay = "EMB-ancient_light"

/obj/item/clothing/head/hardhat/damage_control/EMB_Ancient/yellow
	name = "ancient yellow EMB helmet"
	icon_state = "EMB-ancient-yellow"

/obj/item/clothing/head/hardhat/damage_control/EMB_Ancient/white
	name = "ancient white EMB helmet"
	icon_state = "EMB-ancient-white"

/obj/item/clothing/head/beret/guard
	name = "corporate security beret"
	desc = "A white beret adorned with a corporate logo. For security guards that are more inclined towards style than safety."
	icon_state = "corpsec_beret"

/obj/item/clothing/head/beret/plaincolor
	name = "beret"
	desc = "A simple, solid color beret. This one has no emblems or insignia on it."
	icon_state = "beret_white"
