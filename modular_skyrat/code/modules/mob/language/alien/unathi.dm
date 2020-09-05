/decl/language/unathi
	name =  "Sinta'unathi"
	desc = "The common language of Moghes, composed of sibilant hisses and rattles. Spoken natively by Unathi."
	speech_verb = "hisses"
	ask_verb = "hisses"
	exclaim_verb = "roars"
	colour = "soghun"
	key = "o"
	flags = WHITELISTED
	space_chance = 40
	syllables = list(
		"za", "az", "ze", "ez", "zi", "iz", "zo", "oz", "zu", "uz", "zs", "sz",
		"ha", "ah", "he", "eh", "hi", "ih", "ho", "oh", "hu", "uh", "hs", "sh",
		"la", "al", "le", "el", "li", "il", "lo", "ol", "lu", "ul", "ls", "sl",
		"ka", "ak", "ke", "ek", "ki", "ik", "ko", "ok", "ku", "uk", "ks", "sk",
		"sa", "as", "se", "es", "si", "is", "so", "os", "su", "us", "ss", "ss",
		"ra", "ar", "re", "er", "ri", "ir", "ro", "or", "ru", "ur", "rs", "sr",
		"a",  "a",  "e",  "e",  "i",  "i",  "o",  "o",  "u",  "u",  "s",  "s"
	)
	shorthand = "UT"
	partial_understanding = list(
		/decl/language/human/common = 2,
		/decl/language/spacer = 2,
		/decl/language/yeosa = 50
	)

/decl/language/yeosa
	name = "Yeosa'unathi"
	desc = "A language of Moghes consisting of a combination of spoken word and gesticulation. While it is uncommonly spoken in the drier regions, it enjoys popular usage as the official tongue of the Yeosa clans."
	speech_verb = "hisses"
	ask_verb = "rattles"
	exclaim_verb = "barks"
	colour = "yeosa"
	key = "h"
	flags = WHITELISTED
	space_chance = 40
	syllables = list(
		"azs","zis","zau","azua","skiu","zuakz","izo","aei","ki","kut","zo",
		"za", "az", "ze", "ez", "zi", "iz", "zo", "oz", "zu", "uz", "zs", "sz",
		"ha", "ah", "he", "eh", "hi", "ih", "ho", "oh", "hu", "uh", "hs", "sh",
		"la", "al", "le", "el", "li", "il", "lo", "ol", "lu", "ul", "ls", "sl",
		"ka", "ak", "ke", "ek", "ki", "ik", "ko", "ok", "ku", "uk", "ks", "sk",
		"sa", "as", "se", "es", "si", "is", "so", "os", "su", "us", "ss", "ss",
		"ra", "ar", "re", "er", "ri", "ir", "ro", "or", "ru", "ur", "rs", "sr",
		"a",  "a",  "e",  "e",  "i",  "i",  "o",  "o",  "u",  "u",  "s",  "s"
	)
	shorthand = "YU"
	partial_understanding = list(
		/decl/language/human/common = 2,
		/decl/language/spacer = 2,
		/decl/language/unathi = 50
	)