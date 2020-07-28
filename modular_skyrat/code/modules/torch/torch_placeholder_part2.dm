/obj/item/gun/energy/pulse_rifle
	name = "pulse rifle"
	desc = "A weapon that uses advanced pulse-based beam generation technology to emit powerful laser blasts. Because of its complexity and cost, it is rarely seen in use except by specialists."
	icon = 'modular_skyrat/icons/obj/guns/pulse_rifle.dmi'
	icon_state = "pulse"
	item_state = "pulse"
	slot_flags = SLOT_BACK
	force = 12
	projectile_type = /obj/item/projectile/beam/pulse/heavy
	max_shots = 36
	w_class = ITEM_SIZE_HUGE
	one_hand_penalty= 6
	multi_aim = 1
	burst_delay = 3
	burst = 3
	accuracy = -1
	wielded_item_state = "gun_wielded"
	bulk = GUN_BULK_RIFLE

/obj/item/gun/energy/pulse_rifle/carbine
	name = "pulse carbine"
	desc = "A weapon that uses advanced pulse-based beam generation technology to emit powerful laser blasts. Less bulky than the full-sized rifle."
	icon = 'modular_skyrat/icons/obj/guns/pulse_carbine.dmi'
	icon_state = "pulse_carbine"
	slot_flags = SLOT_BACK|SLOT_BELT
	force = 8
	projectile_type = /obj/item/projectile/beam/pulse/mid
	max_shots = 24
	w_class = ITEM_SIZE_LARGE
	one_hand_penalty= 3
	burst_delay = 2
	bulk = GUN_BULK_RIFLE - 3

/obj/item/gun/energy/pulse_rifle/pistol
	name = "pulse pistol"
	desc = "A weapon that uses advanced pulse-based beam generation technology to emit powerful laser blasts. Even smaller than the carbine."
	icon = 'modular_skyrat/icons/obj/guns/pulse_pistol.dmi'
	icon_state = "pulse_pistol"
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	force = 6
	projectile_type = /obj/item/projectile/beam/pulse
	max_shots = 21
	w_class = ITEM_SIZE_NORMAL
	one_hand_penalty=1 //a bit heavy
	burst_delay = 1
	wielded_item_state = null
	bulk = 0

/obj/item/gun/energy/pulse_rifle/mounted
	self_recharge = 1
	use_external_power = 1
	has_safety = FALSE

/obj/item/gun/energy/pulse_rifle/destroyer
	name = "pulse destroyer"
	desc = "A heavy-duty, pulse-based energy weapon. Because of its complexity and cost, it is rarely seen in use except by specialists."
	cell_type = /obj/item/cell/super
	fire_delay = 25
	projectile_type=/obj/item/projectile/beam/pulse/destroy
	charge_cost= 40

/obj/item/gun/energy/pulse_rifle/destroyer/attack_self(mob/living/user as mob)
	to_chat(user, "<span class='warning'>[src.name] has three settings, and they are all DESTROY.</span>")
	
/obj/item/gun/energy/pulse_rifle/skrell
	name = "skrellian carbine"
	icon = 'modular_skyrat/icons/obj/guns/skrell_carbine.dmi'
	icon_state = "skrell_carbine"
	item_state = "skrell_carbine"
	slot_flags = SLOT_BACK|SLOT_BELT
	desc = "The Vuu'Xqu*ix T-3, known as 'VT-3' by SolGov. Rarely seen out in the wild by anyone outside of a Skrellian SDTF."
	cell_type = /obj/item/cell
	self_recharge = 1
	projectile_type=/obj/item/projectile/beam/pulse/single
	charge_cost=120
	one_hand_penalty = 3
	burst=1
	burst_delay=null
	wielded_item_state = "skrell_carbine-wielded"
	accuracy = 1
	
	firemodes = list(
		list(mode_name="single", projectile_type=/obj/item/projectile/beam/pulse/single, charge_cost=120, burst=1, burst_delay=null),
		list(mode_name="heavy", projectile_type=/obj/item/projectile/beam/pulse/heavy, charge_cost=55, burst=2, burst_delay=3),
		list(mode_name="light", projectile_type=/obj/item/projectile/beam/pulse, charge_cost=40, burst=3, burst_delay=2)
		)

/obj/item/gun/magnetic/railgun/flechette/skrell
	name = "skrellian rifle"
	desc = "The Zquiv*Tzuuli-8, or ZT-8, is a railgun rarely seen by anyone other than those within Skrellian SDTF ranks. The rotary magazine houses a cylinder with individual chambers, that press against the barrel when loaded."
	icon = 'modular_skyrat/icons/obj/guns/skrell_rifle.dmi'
	icon_state = "skrell_rifle"
	item_state = "skrell_rifle"
	one_hand_penalty = 3
	fire_delay = 10
	slowdown_held = 1
	slowdown_worn = 1
	removable_components = FALSE
	initial_cell_type = /obj/item/cell/hyper
	initial_capacitor_type = /obj/item/stock_parts/capacitor/adv
	load_type = /obj/item/magnetic_ammo/
	loaded = /obj/item/magnetic_ammo/slug
	projectile_type = /obj/item/projectile/bullet/magnetic/slug
	slot_flags = SLOT_BACK
	power_cost = 100
	wielded_item_state = "skrell_rifle-wielded"
	firemodes = list()

/obj/item/magnetic_ammo/slug
	name = "slug cylinder"
	desc = "A magazine containing slugs, the design harkening back to cylinders on revolvers."
	projectile_type = /obj/item/projectile/bullet/magnetic/slug

// Rigs and gear themselves.

//Define Rig Clothing
/obj/item/clothing/suit/space/rig/ert/skrell
	name = "skrellian recon hardsuit chestpiece"
	desc = "A powerful recon hardsuit with integrated power supply and atmosphere. It's impressive design perfectly tailors to the user's body."
	//species_restricted = list(SPECIES_SKRELL)

/obj/item/clothing/head/helmet/space/rig/ert/skrell
	name = "skrellian recon hardsuit helmet"
	desc = "A powerful recon hardsuit with integrated power supply and atmosphere. It's impressive design perfectly tailors to the user's body."
	light_overlay = "helmet_light_dual"
	//species_restricted = list(SPECIES_SKRELL)
	/*sprite_sheets = list(
		SPECIES_SKRELL = 'icons/mob/species/skrell/onmob_head_skrell.dmi'
	)*/

/obj/item/clothing/shoes/magboots/rig/ert/skrell
	name = "skrellian recon hardsuit boots"
	desc = "A powerful recon hardsuit with integrated power supply and atmosphere. It's impressive design perfectly tailors to the user's body."
	//species_restricted = list(SPECIES_SKRELL)

/obj/item/clothing/gloves/rig/ert/skrell
	name = "skrellian recon hardsuit gloves"
	desc = "A powerful recon hardsuit with integrated power supply and atmosphere. It's impressive design perfectly tailors to the user's body."
	//species_restricted = list(SPECIES_SKRELL)



//Skrell Baseline Suit
/obj/item/rig/skrell
	name = "skrellian recon hardsuit"
	desc = "A powerful recon hardsuit with integrated power supply and atmosphere. It's impressive design perfectly tailors to the user's body."
	icon_state = "hazard_rig"
	item_state = null
	suit_type = "recon hardsuit"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	online_slowdown = 0
	offline_slowdown = 1
	equipment_overlay_icon = null
	air_type = /obj/item/tank/skrell
	cell_type = /obj/item/cell/skrell
	chest_type = /obj/item/clothing/suit/space/rig/ert/skrell
	helm_type = /obj/item/clothing/head/helmet/space/rig/ert/skrell
	boot_type = /obj/item/clothing/shoes/magboots/rig/ert/skrell
	glove_type = /obj/item/clothing/gloves/rig/ert/skrell
	allowed = list(
		/obj/item/gun,
		/obj/item/ammo_magazine,
		/obj/item/flashlight,
		/obj/item/tank,
		/obj/item/suit_cooling_unit
	)
	update_visible_name = TRUE
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/chem_dispenser/skrell,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/clustertool/skrell
	)
	req_access = list("ACCESS_SKRELLSCOUT")

//Skrell Engineering Suit
/obj/item/rig/skrell/eng
	name = "skrellian engineering hardsuit"
	desc = "A powerful engineering hardsuit with integrated power supply and atmosphere. It's impressive design perfectly tailors to the user's body."
	icon_state = "ert_engineer_rig"
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/chem_dispenser/skrell,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/clustertool/skrell,
		/obj/item/rig_module/device/cable_coil/skrell,
		/obj/item/rig_module/device/multitool/skrell,
		/obj/item/rig_module/device/welder/skrell,
		/obj/item/rig_module/device/rcd
	)

//Skrell Medical Suit
/obj/item/rig/skrell/med
	name = "skrellian medical hardsuit"
	desc = "A powerful medical hardsuit with integrated power supply and atmosphere. It's impressive design perfectly tailors to the user's body."
	icon_state = "ert_medical_rig"
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/chem_dispenser/skrell,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/clustertool/skrell,
		/obj/item/rig_module/device/healthscanner,
		/obj/item/rig_module/device/defib,
		/obj/item/rig_module/chem_dispenser/injector
	)

//Skrell Combat Suit
/obj/item/rig/skrell/sec
	name = "skrellian combat hardsuit"
	desc = "A powerful combat hardsuit with integrated power supply and atmosphere. It's impressive design perfectly tailors to the user's body."
	icon_state = "ert_security_rig"
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/clustertool/skrell,
		/obj/item/rig_module/chem_dispenser/skrell/combat,
		/obj/item/rig_module/device/flash
	)

//Skrell Command Suit
/obj/item/rig/skrell/cmd
	name = "skrellian command hardsuit"
	desc = "A powerful command hardsuit with integrated power supply and atmosphere. It's impressive design perfectly tailors to the user's body."
	icon_state = "ert_commander_rig"
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/chem_dispenser/skrell,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/clustertool/skrell,
		/obj/item/rig_module/device/flash/advanced
	)



// Skrell medical dispensers
/obj/item/rig_module/chem_dispenser/skrell
	name = "skrellian medical injector"
	desc = "A sleek medical injector of skrellian design."
	interface_name = "skrellian medical injector"
	interface_desc = "A sleek medical injector of skrellian design."
	charges = list(
		list("painkillers",            "painkillers",            /decl/material/liquid/painkillers,      20),
		list("oxygen",        "oxygen",        /decl/material/liquid/oxy_meds,      20),
		list("stabilizer",        "stabilizer",        /decl/material/liquid/stabilizer,  20)
	)

// Skrell combat dispenser

/obj/item/rig_module/chem_dispenser/skrell/combat
	name = "skrellian combat injector"
	desc = "A sleek stimulant injector of skrellian design."
	interface_name = "skrellian combat injector"
	interface_desc = "A sleek combat injector of skrellian design."
	charges = list(
		list("painkillers",            "painkillers",            /decl/material/liquid/painkillers,      20),
		list("oxygen",        "oxygen",        /decl/material/liquid/oxy_meds,      20),
		list("stabilizer",        "stabilizer",        /decl/material/liquid/stabilizer,  20),
		list("amphetamine",           "amphetamine",           /decl/material/liquid/amphetamines,          20),
		list("glucose",             "glucose",             /decl/material/liquid/nutriment/glucose,  20)
	)

//Skrell Oxygen Generator
/obj/item/tank/skrell
	name = "skrellian gas reactor"
	desc = "A skrellian gas processing plant that continuously synthesises oxygen."
	distribute_pressure = ONE_ATMOSPHERE*O2STANDARD
	var/charge_cost = 0.01
	var/refill_gas_type = /decl/material/gas/oxygen
	var/gas_regen_amount = 1
	var/gas_regen_cap = 75

/obj/item/tank/skrell/Initialize()
	starting_pressure = list("[refill_gas_type]" = 6 * ONE_ATMOSPHERE)
	. = ..()

/obj/item/tank/skrell/Process()
	..()
	var/obj/item/rig/holder = loc
	if(air_contents.total_moles < gas_regen_cap && istype(holder) && holder.cell && holder.cell.use(charge_cost))
		air_contents.adjust_gas(refill_gas_type, gas_regen_amount)

//Skrell Cluster Tool

/obj/item/rig_module/device/clustertool/skrell
	name = "skrellian clustertool"

//More Skrell Modules to replace Mantid
/obj/item/rig_module/device/multitool/skrell
	name = "skrellian integrated multitool"

/obj/item/rig_module/device/cable_coil/skrell
	name = "skrellian cable extruder"

/obj/item/rig_module/device/welder/skrell
	name = "skrellian welding arm"
	desc = "An electrical cutting torch of Skrell design."
	interface_desc = "An electrical cutting torch of Skrell design."

// Self-charging power cell.
/obj/item/cell/skrell
	name = "skrellian microfusion cell"
	desc = "An impossibly tiny fusion power engine of Skrell design."
	icon = 'modular_skyrat/icons/obj/ascent.dmi'
	icon_state = "plant"
	maxcharge = 1500
	w_class = ITEM_SIZE_NORMAL
	var/recharge_amount = 12

/obj/item/cell/skrell/Initialize()
	START_PROCESSING(SSobj, src)
	. = ..()

/obj/item/cell/skrell/Destroy()
	STOP_PROCESSING(SSobj, src)
	. = ..()

/obj/item/cell/skrell/Process()
	if(charge < maxcharge)
		give(recharge_amount)

/obj/item/projectile/beam/pulse/mid
	damage = 20

/obj/item/projectile/beam/pulse/heavy
	damage = 25

/obj/item/projectile/beam/pulse/single
	damage = 50

/obj/item/chems/food/snacks/skrellsnacks
	name = "\improper SkrellSnax"
	desc = "Cured fungus shipped all the way from Jargon 4, almost like jerky! Almost."
	icon_state = "skrellsnacks"
	filling_color = "#a66829"
	center_of_mass = "x=15;y=12"
	nutriment_desc = list("mushroom" = 5, "salt" = 5)
	nutriment_amt = 10
	bitesize = 3

/obj/item/gun/projectile/dartgun/vox/raider
	starting_chems = list(/decl/material/liquid/psychoactives,/decl/material/liquid/sedatives,/decl/material/liquid/narcotics)

/obj/item/rig/vox
	name = "alien rig control module"
	desc = "A strange rig. Parts of it writhe and squirm as if alive. The visor looks more like a thick membrane."
	suit_type = "alien rig"
	icon_state = "vox_rig"
	armor = list(
		melee = ARMOR_MELEE_MAJOR, 
		bullet = ARMOR_BALLISTIC_RESISTANT, 
		laser = ARMOR_LASER_HANDGUNS, 
		energy = ARMOR_ENERGY_RESISTANT, 
		bomb = ARMOR_BOMB_PADDED, 
		bio = ARMOR_BIO_SHIELDED, 
		rad = ARMOR_RAD_SHIELDED
		)
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = FIRESUIT_MAX_PRESSURE

	chest_type = /obj/item/clothing/suit/space/rig/vox_rig
	helm_type = /obj/item/clothing/head/helmet/space/rig/vox_rig
	boot_type = /obj/item/clothing/shoes/magboots/rig/vox_rig
	glove_type = /obj/item/clothing/gloves/rig/vox_rig
	air_type =     /obj/item/tank/nitrogen
	
	allowed = list(/obj/item/flashlight, /obj/item/tank, /obj/item/ammo_magazine, /obj/item/ammo_casing, /obj/item/ammo_magazine/shotholder, /obj/item/handcuffs, /obj/item/radio, /obj/item/baton, /obj/item/gun, /obj/item/pickaxe)
	
	online_slowdown = 1

	initial_modules = list(
		/obj/item/rig_module/vision/meson,
		/obj/item/rig_module/mounted/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/power_sink,
		/obj/item/rig_module/cooling_unit
		)
		
/obj/item/clothing/head/helmet/space/rig/vox_rig
	//species_restricted = list(SPECIES_VOX)

/obj/item/clothing/suit/space/rig/vox_rig
	//species_restricted = list(SPECIES_VOX)

/obj/item/clothing/shoes/magboots/rig/vox_rig
	//species_restricted = list(SPECIES_VOX)

/obj/item/clothing/gloves/rig/vox_rig
	//species_restricted = list(SPECIES_VOX)
	siemens_coefficient = 0

/obj/item/clothing/suit/armor/vox_scrap
	name = "rusted metal armor"
	desc = "A hodgepodge of various pieces of metal scrapped together into a rudimentary vox-shaped piece of armor."
	allowed = list(/obj/item/gun, /obj/item/tank)
	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH, 
		bullet = ARMOR_BALLISTIC_PISTOL, 
		laser = ARMOR_LASER_MINOR,
		bomb = ARMOR_BOMB_PADDED) //Higher melee armor versus lower everything else.
	icon_state = "vox-scrap"
	body_parts_covered = UPPER_TORSO|ARMS|LOWER_TORSO|LEGS
	//species_restricted = list(SPECIES_VOX, SPECIES_VOX_ARMALIS)
	siemens_coefficient = 1 //Its literally metal

/turf/simulated/wall/r_wall/hull/vox
	initial_gas = list("nitrogen" = 101.38)
	color = COLOR_GREEN_GRAY

/obj/effect/wallframe_spawn/reinforced/hull/vox
	name = "reinforced vox hull wall frame window spawner"
	frame_path = /obj/structure/wall_frame/hull/vox

/obj/structure/wall_frame/hull/vox
	paint_color = COLOR_GREEN_GRAY

#define CALIBER_PISTOL_ANTIQUE	"~10mm"

/obj/item/gun/projectile/pistol/throwback
	name = "pistol"
	desc = "A product of one of thousands of illegal workshops from around the galaxy. Often replicas of ancient Earth handguns, these guns are usually found in hands of frontier colonists and pirates."
	icon = 'modular_skyrat/icons/obj/guns/pistol_throwback.dmi'
	icon_state = "pistol1"
	magazine_type = /obj/item/ammo_magazine/pistol/throwback
	accuracy_power = 5
	one_hand_penalty = 2
	fire_delay = 7
	caliber = CALIBER_PISTOL_ANTIQUE
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	var/base_icon = "pistol1"

/obj/item/gun/projectile/pistol/throwback/Initialize()
	. = ..()
	base_icon = "pistol[rand(1,4)]"
	update_icon()

/obj/item/gun/projectile/pistol/throwback/on_update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = base_icon
	else
		icon_state = "[base_icon]-e"

/obj/item/ammo_magazine/pistol/throwback
	name = "pistol magazine"
	caliber = CALIBER_PISTOL_ANTIQUE
	ammo_type = /obj/item/ammo_casing/pistol/throwback

/obj/item/ammo_casing/pistol/throwback
	desc = "An antique pistol bullet casing. Somewhere between 9 and 11 mm in caliber."
	caliber = CALIBER_PISTOL_ANTIQUE

/obj/effect/landmark/corpse/miner
	name = "Miner"
	corpse_outfits = list(/decl/hierarchy/outfit/job/cargo/mining)

/obj/machinery/vending/soda
	name = "\improper Radical Renard"
	desc = "A softdrink vendor promoted by Radical Renard."
	icon_state = "Soda_Machine"
	icon_vend = "Soda_Machine-vend"
	icon_deny = "Soda_Machine-deny"
	vend_delay = 11
	base_type = /obj/machinery/vending/soda
	product_slogans = "Not applicable!"
	product_ads = "Not applicable."
	products = list(///obj/item/chems/food/drinks/cans/cola_diet = 10,/obj/item/chems/food/drinks/cans/rootbeer = 10,
					///obj/item/chems/food/drinks/cans/cola_apple = 10,/obj/item/chems/food/drinks/cans/cola_orange = 10,
					/obj/item/chems/food/drinks/cans/waterbottle = 10,///obj/item/chems/food/drinks/cans/cola_grape = 10,
					/*/obj/item/chems/food/drinks/cans/cola_lemonlime = 10, /obj/item/chems/food/drinks/cans/cola_strawberry = 10*/)
	contraband = list(/*/obj/item/chems/food/drinks/cans/cola_pork = 10*/)
	idle_power_usage = 211 //refrigerator - believe it or not, this is actually the average power consumption of a refrigerated vending machine according to NRCan.

/decl/hierarchy/outfit/job/cargo/mining
	name = OUTFIT_JOB_NAME("Shaft miner")
	uniform = /obj/item/clothing/under/rank/miner
	//id_type = /obj/item/card/id/cargo/mining
	pda_type = /obj/item/modular_computer/pda/science
	backpack_contents = list(/obj/item/crowbar = 1, /obj/item/storage/ore = 1)
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/obj/item/gun/projectile/shotgun/pump/combat
	name = "combat shotgun"
	desc = "Built for close quarters combat, the Hephaestus Industries KS-40 is widely regarded as a weapon of choice for repelling boarders."
	icon_state = "cshotgun"
	item_state = "cshotgun"
	wielded_item_state = "cshotgun-wielded"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	max_shells = 7 //match the ammo box capacity, also it can hold a round in the chamber anyways, for a total of 8.
	ammo_type = /obj/item/ammo_casing/shotgun
	one_hand_penalty = 8

/obj/item/gun/projectile/shotgun/pump/combat/on_update_icon()
	..()
	if(length(loaded) > 3)
		for(var/i = 0 to length(loaded) - 4)
			var/image/I = image(icon, "shell")
			I.pixel_x = i * 2
			overlays += I

/obj/item/book/manual/hydroponics_pod_people
	name = "The Diona Harvest - From Seed to Market"
	icon_state ="bookHydroponicsPodPeople"
	author = "Farmer John"
	title = "The Diona Harvest - From Seed to Market"

	dat = {"<html>
				<head>
				<style>
				h1 {font-size: 18px; margin: 15px 0px 5px;}
				h2 {font-size: 15px; margin: 15px 0px 5px;}
				li {margin: 2px 0px 2px 15px;}
				ul {margin: 5px; padding: 0px;}
				ol {margin: 5px; padding: 0px 15px;}
				body {font-size: 13px; font-family: Verdana;}
				</style>
				</head>
				<body>
				<h3>Growing a Diona</h3>
				Growing a Diona is easy!
				<p>
				<ol>
					<li>Take a syringe of blood from the body you wish to turn into a Diona.</li>
					<li>Inject 5 units of blood into the pack of dionaea-replicant seeds.</li>
					<li>Plant the seeds.</li>
					<li>Tend to the plants water and nutrition levels until it is time to harvest the Diona.</li>
				</ol>
				<p>
				Note that for a successful harvest, the body from which the blood was taken from must be dead BEFORE harvesting the pod, however the pod can be growing while they are still alive. Otherwise, the soul would not be able to migrate to the new Diona body.<br><br>
				It really is that easy! Good luck!
				</body>
				</html>
				"}

/obj/item/book/manual/research_and_development
	name = "Research and Development 101"
	icon_state = "rdbook"
	author = "Dr. L. Ight"
	title = "Research and Development 101"

	dat = {"<html>
				<head>
				<style>
				h1 {font-size: 21px; margin: 15px 0px 5px;}
				h2 {font-size: 18px; margin: 15px 0px 5px;}
				h3 {font-size: 15px; margin: 15px 0px 5px;}
				li {margin: 2px 0px 2px 15px;}
				ul {margin: 5px; padding: 0px;}
				ol {margin: 5px; padding: 0px 15px;}
				body {font-size: 13px; font-family: Verdana;}
				</style>
				</head>
				<body>
				<h1>Science For Dummies</h1>
				So you want to further SCIENCE? Good man/woman/thing! However, SCIENCE is a complicated process even though it's quite easy. For the most part, it's a three step process:
				<ol>
					<li><b>Deconstruct</b> items in the Destructive Analyzer to advance technology or improve the design.</li>
					<li><b>Build</b> unlocked designs in the Protolathe and Circuit Imprinter.</li>
					<li><b>Repeat</b>!</li>
				</ol>
				Those are the basic steps to furthering science. What do you do science with, however? Well, you have four major tools: R&D Console, the Destructive Analyzer, the Protolathe, and the Circuit Imprinter.
				<h2>The R&D Console</h2>
				The R&D console is the cornerstone of any research lab. It is the central system from which the Destructive Analyzer, Protolathe, and Circuit Imprinter (your R&D systems) are controlled. More on those systems in their own sections.
				On its own, the R&D console acts as a database for all your technological gains and new devices you discover. So long as the R&D console remains intact, you'll retain all that SCIENCE you've discovered. Protect it though,
				because if it gets damaged, you'll lose your data!
				In addition to this important purpose, the R&D console has a disk menu that lets you transfer data from the database onto disk or from the disk into the database.
				It also has a settings menu that lets you re-sync with nearby R&D devices (if they've become disconnected), lock the console from the unworthy,
				upload the data to all other R&D consoles in the network (all R&D consoles are networked by default), connect/disconnect from the network, and purge all data from the database.<br><br>
				<b>NOTE:</b> The technology list screen, circuit imprinter, and protolathe menus are accessible by non-scientists. This is intended to allow 'public' systems for the plebians to utilize some new devices.
				<h2>Destructive Analyzer</h2>
				This is the source of all technology. Whenever you put a handheld object in it, it analyzes it and determines what sort of technological advancements you can discover from it. If the technology of the object is equal or higher then your current knowledge,
				you can destroy the object to further those sciences.
				Some devices (notably, some devices made from the protolathe and circuit imprinter) aren't 100% reliable when you first discover them. If these devices break down, you can put them into the Destructive Analyzer and improve their reliability rather than further science.
				If their reliability is high enough, it'll also advance their related technologies.
				<h2>Circuit Imprinter</h2>
				This machine, along with the Protolathe, is used to actually produce new devices. The Circuit Imprinter takes glass and various chemicals (depends on the design) to produce new circuit boards to build new machines or computers. It can even be used to print AI modules.
				<h2>Protolathe</h2>
				This machine is an advanced form of the Autolathe that produce non-circuit designs. Unlike the Autolathe, it can use processed metal, glass, solid phoron, silver, gold, and diamonds along with a variety of chemicals to produce devices.
				The downside is that, again, not all devices you make are 100% reliable when you first discover them.
				<h2>Reliability and You</h2>
				As it has been stated, many devices, when they're first discovered, do not have a 100% reliability. Instead,
				the reliability of the device is dependent upon a base reliability value, whatever improvements to the design you've discovered through the Destructive Analyzer,
				and any advancements you've made with the device's source technologies. To be able to improve the reliability of a device, you have to use the device until it breaks beyond repair. Once that happens, you can analyze it in a Destructive Analyzer.
				Once the device reaches a certain minimum reliability, you'll gain technological advancements from it.
				<h2>Building a Better Machine</h2>
				Many machines produced from circuit boards inserted into a machine frames require a variety of parts to construct. These are parts like capacitors, batteries, matter bins, and so forth. As your knowledge of science improves, more advanced versions are unlocked.
				If you use these parts when constructing something, its attributes may be improved.
				For example, if you use an advanced matter bin when constructing an autolathe (rather than a regular one), it'll hold more materials. Experiment around with stock parts of various qualities to see how they affect the end results! Be warned, however:
				Tier 3 and higher stock parts don't have 100% reliability and their low reliability may affect the reliability of the end machine.
				</body>
			</html>
			"}

/obj/structure/bookcase/manuals/research_and_development
	name = "R&D Manuals bookcase"

/obj/structure/bookcase/manuals/research_and_development/Initialize()
	..()
	new /obj/item/book/manual/research_and_development(src)
	update_icon()
