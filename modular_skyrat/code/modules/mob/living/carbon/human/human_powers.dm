/mob/living/carbon/human/proc/diona_heal_toggle()
	set name = "Toggle Heal"
	set desc = "Turn your innate healing on or off."
	set category = "Abilities"
	var/obj/aura/regenerating/human/aura = locate() in auras
	if(!aura)
		to_chat(src, SPAN_WARNING("You don't possess an innate healing ability."))
		return
	if(!aura.can_toggle())
		to_chat(src, SPAN_WARNING("You can't toggle the healing at this time!"))
		return
	aura.toggle()
	if (aura.innate_heal)
		to_chat(src, "<span class='alium'>You are now using nutrients to regenerate.</span>")
	else
		to_chat(src, "<span class='alium'>You are no longer using nutrients to regenerate.</span>")
