/datum/client_preference/ambient_occlusion
	description ="Ambient occlusion"
	key = "AMBIENT_OCCLUSION"
	options = list(GLOB.PREF_YES, GLOB.PREF_NO)
	default_value = GLOB.PREF_YES

/datum/client_preference/ambient_occlusion/changed(var/mob/preference_mob, var/new_value)
	var/datum/hud/H = preference_mob.hud_used
	for(var/plane in H.plane_masters)
		var/obj/screen/plane_master/PM = H.plane_masters[plane]
		PM.backdrop(preference_mob)

/datum/client_preference/widescreen
	description ="Widescreen (21x15)"
	key = "WIDESCREEN"
	options = list(GLOB.PREF_YES, GLOB.PREF_NO)
	default_value = GLOB.PREF_YES

/datum/client_preference/widescreen/changed(var/mob/preference_mob, var/new_value)
	if(preference_mob.client)
		preference_mob.client.set_view()
