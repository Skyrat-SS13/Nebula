// PDA types
/obj/item/modular_computer/pda/chemistry
	color = COLOR_OFF_WHITE
	decals = list(
		"stripe" = COLOR_ORANGE
	)

/obj/item/modular_computer/pda/security
	color = COLOR_RED
	decals = list(
		"stripe" = COLOR_GOLD
	)

/obj/item/modular_computer/pda/forensics
	color = COLOR_RED
	decals = list(
		"stripe" = COLOR_GOLD
	)

/obj/item/modular_computer/pda/heads/paperpusher
	stored_pen = /obj/item/pen/fancy

/obj/item/modular_computer/pda/heads/hos
	decals = list(
		"stripe" = COLOR_GOLD,
		"stripe2" = COLOR_COPPER
	)

/obj/item/modular_computer/pda/heads/cmo
	decals = list(
		"stripe" = COLOR_GOLD,
		"stripe2" = COLOR_TEAL
	)

/obj/item/modular_computer/pda/heads/rd
	decals = list(
		"stripe" = COLOR_GREEN,
		"stripe2" = COLOR_TEAL
	)

/obj/item/modular_computer/pda/ert
	color = COLOR_NAVY_BLUE

/obj/item/modular_computer/pda/cargo
	color = COLOR_COPPER
	decals = list(
		"stripe" = COLOR_PURPLE
	)

/obj/item/modular_computer/pda/roboticist
	color = COLOR_OFF_WHITE
	decals = list(
		"stripe2" = COLOR_COPPER
	)

/obj/item/modular_computer/pda/mining
	color = COLOR_PURPLE
	decals = list(
		"stripe2" = COLOR_COPPER
	)

/*/obj/item/modular_computer/pda/medical/install_default_hardware()
	..()
	scanner = new /obj/item/weapon/stock_parts/computer/scanner/medical(src)

/obj/item/modular_computer/pda/chemistry/install_default_hardware()
	..()
	scanner = new /obj/item/weapon/stock_parts/computer/scanner/reagent(src)

/obj/item/modular_computer/pda/engineering/install_default_hardware()
	..()
	scanner = new /obj/item/weapon/stock_parts/computer/scanner/atmos(src)

/obj/item/modular_computer/pda/science/install_default_hardware()
	..()
	scanner = new /obj/item/weapon/stock_parts/computer/scanner/reagent(src)

/obj/item/modular_computer/pda/forensics/install_default_hardware()
	..()
	scanner = new /obj/item/weapon/stock_parts/computer/scanner/reagent(src)

/obj/item/modular_computer/pda/heads/install_default_programs()
	..()
	hard_drive.store_file(new /datum/computer_file/program/reports())

/obj/item/modular_computer/pda/heads/hop/install_default_hardware()
	..()
	scanner = new /obj/item/weapon/stock_parts/computer/scanner/paper(src)

/obj/item/modular_computer/pda/heads/hos/install_default_hardware()
	..()
	scanner = new /obj/item/weapon/stock_parts/computer/scanner/paper(src)

/obj/item/modular_computer/pda/heads/ce/install_default_hardware()
	..()
	scanner = new /obj/item/weapon/stock_parts/computer/scanner/atmos(src)

/obj/item/modular_computer/pda/heads/cmo/install_default_hardware()
	..()
	scanner = new /obj/item/weapon/stock_parts/computer/scanner/medical(src)

/obj/item/modular_computer/pda/heads/rd/install_default_hardware()
	..()
	scanner = new /obj/item/weapon/stock_parts/computer/scanner/paper(src)

/obj/item/modular_computer/pda/cargo/install_default_programs()
	..()
	hard_drive.store_file(new /datum/computer_file/program/reports())

/obj/item/modular_computer/pda/cargo/install_default_hardware()
	..()
	scanner = new /obj/item/weapon/stock_parts/computer/scanner/paper(src)

/obj/item/modular_computer/pda/mining/install_default_hardware()
	..()
	scanner = new /obj/item/weapon/stock_parts/computer/scanner/atmos(src)

/obj/item/modular_computer/pda/explorer/install_default_hardware()
	..()
	scanner = new /obj/item/weapon/stock_parts/computer/scanner/atmos(src)

/obj/item/modular_computer/pda/captain/install_default_hardware()
	..()
	scanner = new /obj/item/weapon/stock_parts/computer/scanner/paper(src)*/