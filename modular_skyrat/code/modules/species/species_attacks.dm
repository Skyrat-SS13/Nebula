/decl/natural_attack/punch/venom
	attack_verb = list("mauled", "sank their claws into")
	attack_sound = 'sound/weapons/bite.ogg'
	damage = 2.5
	delay = 60
	attack_name = "venomous strike"

/decl/natural_attack/bite/venom/get_damage_type()
	return TOX

/decl/natural_attack/diona
	attack_verb = list("lashed", "bludgeoned")
	attack_noun = list("tendril")
	eye_attack_text = "a tendril"
	eye_attack_text_victim = "a tendril"
	attack_name = "tendrils"
