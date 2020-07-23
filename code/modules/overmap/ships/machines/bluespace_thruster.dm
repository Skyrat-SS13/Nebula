/obj/machinery/zero_point_thruster
	name = "zero-point propulsion device"
	desc = "An advanced propulsion device, using energy and minutes amount of gas to generate thrust."
	icon = 'icons/obj/ship_engine.dmi'
	icon_state = "nozzle"
	power_channel = ENVIRON
	idle_power_usage = 100
	anchored = TRUE
	construct_state = /decl/machine_construction/default/panel_closed

/obj/machinery/zero_point_thruster/Initialize()
	. = ..()
	set_extension(src, /datum/extension/ship_engine/zero_point, "zero-point thruster")
	var/datum/extension/ship_engine/engine = get_extension(src, /datum/extension/ship_engine)
	engine.connect_to_ship()

/obj/item/stock_parts/circuitboard/engine/zero_point
	name = T_BOARD("zero-point propulsion device")
	board_type = "machine"
	icon_state = "mcontroller"
	build_path = /obj/machinery/zero_point_thruster
	origin_tech = "{'powerstorage':1,'engineering':2}"
	req_components = list(
							/obj/item/stack/cable_coil = 2,
							/obj/item/stock_parts/matter_bin = 1,
							/obj/item/stock_parts/capacitor = 2)
	material = /decl/material/solid/metal/gold
	matter = list(
		/decl/material/solid/gemstone/diamond = MATTER_AMOUNT_REINFORCEMENT,
		/decl/material/solid/metal/uranium = MATTER_AMOUNT_TRACE,
		/decl/material/solid/plastic = MATTER_AMOUNT_TRACE,
		/decl/material/solid/metal/aluminium = MATTER_AMOUNT_TRACE
	)