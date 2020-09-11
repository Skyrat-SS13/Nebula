/datum/fabricator_recipe/robotics/prosthetic
	category = "Unbranded Prosthetics"
	path = /obj/item/organ/external/leg
	var/model

/datum/fabricator_recipe/robotics/prosthetic/get_resources()
	. = ..()
	for(var/key in resources)
		if(!ispath(key, /decl/material/solid))
			resources -= key
	var/meat_amount = LAZYACCESS(resources, /decl/material/solid/meat)
	if(meat_amount)
		if(LAZYACCESS(resources, /decl/material/solid/metal/steel))
			resources[/decl/material/solid/metal/steel] += meat_amount
		else
			LAZYSET(resources, /decl/material/solid/metal/steel, meat_amount)
		LAZYREMOVE(resources, /decl/material/solid/meat)

/datum/fabricator_recipe/robotics/prosthetic/get_product_name()
	. = "prosthetic limb ([..()])"
	if(model)
		var/datum/robolimb/brand = model
		return "[.] ([initial(brand.company)])"

/datum/fabricator_recipe/robotics/prosthetic/build()
	. = ..()
	for(var/obj/item/organ/external/E in .)
		E.robotize(model)

/datum/fabricator_recipe/robotics/prosthetic/right_leg
	path = /obj/item/organ/external/leg/right

/datum/fabricator_recipe/robotics/prosthetic/left_arm
	path = /obj/item/organ/external/arm

/datum/fabricator_recipe/robotics/prosthetic/right_arm
	path = /obj/item/organ/external/arm/right

/datum/fabricator_recipe/robotics/prosthetic/head
	path = /obj/item/organ/external/head

/datum/fabricator_recipe/robotics/prosthetic/chest
	path = /obj/item/organ/external/chest

/datum/fabricator_recipe/robotics/prosthetic/groin
	path = /obj/item/organ/external/groin
