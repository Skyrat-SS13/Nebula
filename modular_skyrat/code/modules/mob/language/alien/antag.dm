/decl/language/ling
	name = "Changeling"
	desc = "Although they are normally wary and suspicious of each other, changelings can commune over a distance."
	speech_verb = "says"
	colour = "changeling"
	key = "g"
	flags = RESTRICTED | HIVEMIND
	shorthand = "N/A"
	hidden_from_codex = TRUE

/decl/language/ling/broadcast(var/mob/living/speaker,var/message,var/speaker_mask)

	if(speaker.mind && speaker.mind.changeling)
		..(speaker,message,speaker.mind.changeling.changelingID)
	else
		..(speaker,message)

/decl/language/vox
	name = "Vox-pidgin"
	desc = "The common tongue of the various Vox ships making up the Shoal. It sounds like chaotic shrieking to everyone else."
	speech_verb = "shrieks"
	ask_verb = "creels"
	exclaim_verb = "SHRIEKS"
	colour = "vox"
	key = "x"
	flags = WHITELISTED
	syllables = list("ti","ti","ti","hi","hi","ki","ki","ki","ki","ya","ta","ha","ka","ya","chi","cha","kah", \
	"SKRE","AHK","EHK","RAWK","KRA","AAA","EEE","KI","II","KRI","KA")
	machine_understands = 0
	shorthand = "Vox"

/decl/language/vox/can_speak_special(var/mob/speaker)
	if(!ishuman(speaker))
		return FALSE
	var/mob/living/carbon/human/H = speaker
	var/obj/item/organ/internal/hindtongue/tongue = H.internal_organs_by_name[BP_HINDTONGUE]
	if(!istype(tongue) || !tongue.is_usable())
		to_chat(speaker, SPAN_WARNING("You are not capable of speaking [name]!"))
		return FALSE
	return TRUE

/decl/language/vox/get_random_name()
	return ..(FEMALE,1,6)

/decl/language/cultcommon
	name = "Cult"
	desc = "The chants of the occult, the incomprehensible."
	speech_verb = "intones"
	ask_verb = "intones"
	exclaim_verb = "chants"
	colour = "cult"
	key = "f"
	flags = RESTRICTED
	space_chance = 100
	syllables = list("ire","ego","nahlizet","certum","veri","jatkaa","mgar","balaq", "karazet", "geeri", \
		"orkan", "allaq", "sas'so", "c'arta", "forbici", "tarem", "n'ath", "reth", "sh'yro", "eth", "d'raggathnor", \
		"mah'weyh", "pleggh", "at", "e'ntrath", "tok-lyr", "rqa'nap", "g'lt-ulotf", "ta'gh", "fara'qha", "fel", "d'amar det", \
		"yu'gular", "faras", "desdae", "havas", "mithum", "javara", "umathar", "uf'kal", "thenar", "rash'tla", \
		"sektath", "mal'zua", "zasan", "therium", "viortia", "kla'atu", "barada", "nikt'o", "fwe'sh", "mah", "erl", "nyag", "r'ya", \
		"gal'h'rfikk", "harfrandid", "mud'gib", "fuu", "ma'jin", "dedo", "ol'btoh", "n'ath", "reth", "sh'yro", "eth", \
		"d'rekkathnor", "khari'd", "gual'te", "nikka", "nikt'o", "barada", "kla'atu", "barhah", "hra" ,"zar'garis")
	machine_understands = 0
	shorthand = "CT"
	hidden_from_codex = TRUE

/decl/language/cult
	name = "Occult"
	desc = "The initiated can share their thoughts by means defying all reason."
	speech_verb = "intones"
	ask_verb = "intones"
	exclaim_verb = "chants"
	colour = "cult"
	key = "y"
	flags = RESTRICTED | HIVEMIND
	shorthand = "N/A"
	hidden_from_codex = TRUE

/decl/language/alium
	name = "Alium"
	colour = "cult"
	speech_verb = "hisses"
	key = "a"
	flags = RESTRICTED
	syllables = list("qy","bok","mok","yok","dy","gly","ryl","byl","dok","forbici", "tarem", "n'ath", "reth", "sh'yro", "eth", "d'raggathnor","niii",
	"d'rekkathnor", "khari'd", "gual'te", "ki","ki","ki","ki","ya","ta","wej","nym","assah","qwssa","nieasl","qyno","shaffar",
	"eg","bog","voijs","nekks","bollos","qoulsan","borrksakja","neemen","aka","nikka","qyegno","shafra","beolas","Byno")
	machine_understands = 0
	shorthand = "AL"
	hidden_from_codex = TRUE

/decl/language/alium/Initialize()
	speech_verb = pick("hisses","growls","whistles","blubbers","chirps","skreeches","rumbles","clicks")
	..()

/decl/language/alium/get_random_name()
	var/new_name = ""
	var/length = rand(1,3)
	for(var/i=0 to length)
		new_name += pick(syllables)
	return capitalize(new_name)