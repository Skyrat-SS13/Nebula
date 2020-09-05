/decl/material/liquid/mindbreaker
	name = "Mindbreaker Toxin"
	lore_text = "A powerful hallucinogen, it can cause fatal effects in users."
	taste_description = "sourness"
	color = "#b31008"
	metabolism = REM * 0.25
	overdose = REAGENTS_OVERDOSE
	value = 0.6

/decl/material/liquid/mindbreaker/affect_blood(var/mob/living/carbon/M, var/alien, var/removed, var/datum/reagents/holder)
	if(alien == IS_DIONA)
		return
	M.add_chemical_effect(CE_MIND, -2)
	if(alien == IS_SKRELL)
		M.hallucination(25, 30)
	else
		M.hallucination(50, 50)

/decl/material/liquid/psilocybin
	name = "Psilocybin"
	lore_text = "A strong psycotropic derived from certain species of mushroom."
	taste_description = "mushroom"
	color = "#e700e7"
	overdose = REAGENTS_OVERDOSE
	metabolism = REM * 0.5
	value = 0.7

/decl/material/liquid/psilocybin/affect_blood(var/mob/living/carbon/M, var/alien, var/removed, var/datum/reagents/holder)
	if(alien == IS_DIONA)
		return

	var/threshold = 1
	if(alien == IS_SKRELL)
		threshold = 1.2

	M.drugged = max(M.drugged, 30)

	if(M.chem_doses[type] < 1 * threshold)
		M.apply_effect(3, STUTTER)
		M.make_dizzy(5)
		if(prob(5))
			M.emote(pick("twitch", "giggle"))
	else if(M.chem_doses[type] < 2 * threshold)
		M.apply_effect(3, STUTTER)
		M.make_jittery(5)
		M.make_dizzy(5)
		M.drugged = max(M.drugged, 35)
		if(prob(10))
			M.emote(pick("twitch", "giggle"))
	else
		M.add_chemical_effect(CE_MIND, -1)
		M.apply_effect(3, STUTTER)
		M.make_jittery(10)
		M.make_dizzy(10)
		M.drugged = max(M.drugged, 40)
		if(prob(15))
			M.emote(pick("twitch", "giggle"))

/decl/material/liquid/space_drugs
	name = "Space drugs"
	lore_text = "An illegal chemical compound used as drug."
	taste_description = "bitterness"
	taste_mult = 0.4
	color = "#60a584"
	metabolism = REM * 0.5
	overdose = REAGENTS_OVERDOSE
	value = 2.8

/decl/material/liquid/space_drugs/affect_blood(var/mob/living/carbon/M, var/alien, var/removed, var/datum/reagents/holder)
	if(alien == IS_DIONA)
		return

	var/drug_strength = 15
	if(alien == IS_SKRELL)
		drug_strength = drug_strength * 0.8

	M.drugged = max(M.drugged, drug_strength)
	if(prob(10))
		M.SelfMove(pick(GLOB.cardinal))
	if(prob(7))
		M.emote(pick("twitch", "drool", "moan", "giggle"))
	M.add_chemical_effect(CE_PULSE, -1)
