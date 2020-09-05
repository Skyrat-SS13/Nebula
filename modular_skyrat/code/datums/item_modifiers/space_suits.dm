/decl/item_modifier/space_suit/explorer
	name = "Explorer"
	type_setups = list(
		/obj/item/clothing/head/helmet/space = list(
			SETUP_NAME = "exploration voidsuit helmet",
			SETUP_ICON_STATE = "helm_explorer",
			SETUP_ITEM_STATE = "helm_explorer"
		),
		/obj/item/clothing/suit/space/void = list(
			SETUP_NAME = "exploration voidsuit",
			SETUP_ICON_STATE = "void_explorer",
			SETUP_ITEM_STATE_SLOTS = list(
				slot_l_hand_str = "s_suit",
				slot_r_hand_str = "s_suit"
			)
		)
	)

/decl/item_modifier/space_suit/hazard
	name = "Hazard"
	type_setups = list(
		/obj/item/clothing/head/helmet/space = list(
			SETUP_NAME = "hazardous operation voidsuit helmet",
			SETUP_ICON_STATE = "rig0-haz",
			SETUP_ITEM_STATE = "haz_helm"
		),
		/obj/item/clothing/suit/space/void = list(
			SETUP_NAME = "hazardous operation voidsuit",
			SETUP_ICON_STATE = "rig-haz",
			SETUP_ITEM_STATE_SLOTS = list(
				slot_l_hand_str = "eng_voidsuit",
				slot_r_hand_str = "eng_voidsuit"
			)
		)
	)
