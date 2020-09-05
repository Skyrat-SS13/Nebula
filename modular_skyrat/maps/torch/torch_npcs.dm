/obj/random_multi/single_item/punitelly
	name = "Multi Point - Warrant Officer Punitelli"
	id = "Punitelli"
	item_path = /mob/living/carbon/human/monkey/punitelli

/mob/living/carbon/human/monkey/punitelli/Initialize()
	..()
	name = "Warrant Officer Punitelli"
	real_name = name
	gender = MALE
	var/obj/item/clothing/C
	C = new /obj/item/clothing/under/solgov/utility/expeditionary/monkey(src)
	equip_to_appropriate_slot(C)
	put_in_hands(new /obj/item/chems/food/drinks/glass2/coffeecup/punitelli)
	C = new /obj/item/clothing/mask/smokable/cigarette/jerichos(src)
	equip_to_appropriate_slot(C)

/obj/random_multi/single_item/runtime
	name = "Multi Point - Runtime"
	id = "Runtime"
	item_path = /mob/living/simple_animal/cat/fluff/Runtime

/obj/random_multi/single_item/poppy
	name = "Multi Point - Poppy"
	id = "Poppy"
	item_path = /mob/living/simple_animal/opossum/poppy