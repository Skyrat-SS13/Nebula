/obj/aura/regenerating/human/unathi
	nutrition_damage_mult = 2
	brute_mult = 2
	organ_mult = 4
	regen_message = "<span class='warning'>You feel a soothing sensation as your ORGAN mends...</span>"
	grow_chance = 2
	grow_threshold = 150
	ignore_tag = BP_HEAD
	var/toggle_blocked_until = 0 // A time

/obj/aura/regenerating/human/unathi/toggle()
	..()
	toggle_blocked_until = max(world.time + 2 MINUTES, toggle_blocked_until)

/obj/aura/regenerating/human/unathi/can_toggle()
	if(world.time < toggle_blocked_until)
		return FALSE
	return ..()

// Default return; we're just logging.
/obj/aura/regenerating/human/unathi/attackby()
	toggle_blocked_until = max(world.time + 1 MINUTE, toggle_blocked_until)

/obj/aura/regenerating/human/unathi/hitby()
	toggle_blocked_until = max(world.time + 1 MINUTE, toggle_blocked_until)

/obj/aura/regenerating/human/unathi/bullet_act()
	toggle_blocked_until = max(world.time + 1 MINUTE, toggle_blocked_until)

/obj/aura/regenerating/human/unathi/life_tick()
	var/mob/living/carbon/human/H = user
	if(innate_heal && istype(H) && H.stat != DEAD && H.nutrition < 50)
		H.apply_damage(5, TOX)
		H.adjust_nutrition(3)
		return 1
	return ..()

/obj/aura/regenerating/human/unathi/can_regenerate_organs()
	return can_toggle()

/obj/aura/regenerating/human/unathi/external_regeneration_effect(var/obj/item/organ/external/O, var/mob/living/carbon/human/H)
	to_chat(H, "<span class='danger'>With a shower of fresh blood, a new [O.name] forms.</span>")
	H.visible_message("<span class='danger'>With a shower of fresh blood, a length of biomass shoots from [H]'s [O.amputation_point], forming a new [O.name]!</span>")
	H.adjust_nutrition(-external_nutrition_mult)
	//var/datum/reagent/blood/B = locate(/datum/reagent/blood) in H.vessel.reagent_list
	blood_splatter(H.loc,H,1)
	O.set_dna(H.dna)

/obj/aura/regenerating/human/unathi/yeosa
	brute_mult = 1.5
	organ_mult = 3
	tox_mult = 2

/obj/aura/regenerating/human/diona
	brute_mult = 4
	fire_mult = 4
	tox_mult = 0
	nutrition_damage_mult = 2
	organ_mult = 2
	regen_message = "<span class='warning'>You sense your nymphs shifting internally to regenerate your ORGAN..</span>"
	grow_chance = 5
	grow_threshold = 100
	external_nutrition_mult = 60

/obj/aura/regenerating/human/diona/external_regeneration_effect(var/obj/item/organ/external/O, var/mob/living/carbon/human/H)
	to_chat(H, "<span class='warning'>Some of your nymphs split and hurry to reform your [O.name].</span>")
	H.adjust_nutrition(-external_nutrition_mult)

/obj/aura/regenerating/human/promethean
	brute_mult = 3
	fire_mult = 3
	tox_mult = 3
	//oxy_mult = 3
	nutrition_damage_mult = 2
	organ_mult = 2
	regen_message = "<span class='warning'>You feel a soothing sensation within your ORGAN.</span>"
	grow_chance = 20
	grow_threshold = 50
	external_nutrition_mult = 10

/obj/aura/regenerating/human/promethean/external_regeneration_effect(var/obj/item/organ/external/O, var/mob/living/carbon/human/H)
	to_chat(H, "<span class='warning'>You feel a slithering sensation as your [O.name] reforms.</span>")
	H.adjust_nutrition(-external_nutrition_mult)
