/obj/item/storage/firstaid/light
	name = "light first-aid kit"
	desc = "It's a small emergency medical kit."
	icon_state = "light_firstaid"
	storage_slots = 5
	w_class = ITEM_SIZE_SMALL
	max_w_class = ITEM_SIZE_SMALL
	startswith = list(
	/obj/item/clothing/gloves/latex/nitrile,
	/obj/item/chems/hypospray/autoinjector,
	/obj/item/chems/hypospray/autoinjector/pouch_auto/stabilizer,
	/obj/item/chems/hypospray/autoinjector/pouch_auto/oxy_meds,
	/obj/item/stack/medical/bruise_pack
		)
	can_hold = list(
		/obj/item/clothing/gloves/latex,
		/obj/item/chems/hypospray/autoinjector,
		/obj/item/stack/medical/bruise_pack
		)
