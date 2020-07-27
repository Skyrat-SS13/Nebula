#define NORMAL_VIEW_X 15
#define NORMAL_VIEW_Y 15

#define WIDESCREEN_VIEW_X 21
#define WIDESCREEN_VIEW_Y 15

/proc/handle_resize(client/C)
	if (!C)
		return
	// I have no idea what's happening here so I'm just going to comment it out
	/*var/divisor = text2num(winget(C, "mapwindow.map", "icon-size")) || world.icon_size
	var/winsize_string = winget(C, "mapwindow.map", "size")
	C.last_view_x_dim = Clamp(ceil(text2num(winsize_string) / divisor), 15, 41)
	C.last_view_y_dim = Clamp(ceil(text2num(copytext(winsize_string,findtext(winsize_string,"x")+1,0)) / divisor), 15, 41)
	if(C.last_view_x_dim % 2 == 0) C.last_view_x_dim++
	if(C.last_view_y_dim % 2 == 0) C.last_view_y_dim++*/
	/*if(C.get_preference_value(/datum/client_preference/widescreen) == GLOB.PREF_YES)
		C.last_view_x_dim = WIDESCREEN_VIEW_X
		C.last_view_y_dim = WIDESCREEN_VIEW_Y
	else
		C.last_view_x_dim = NORMAL_VIEW_X
		C.last_view_y_dim = NORMAL_VIEW_Y
	var/desired_view = "[C.last_view_x_dim]x[C.last_view_y_dim]"
	if(C.view != desired_view)
		C.view = desired_view*/
	C.set_view()

	// Reset eye/perspective
	var/last_perspective = C.perspective
	C.perspective = MOB_PERSPECTIVE
	if(C.perspective != last_perspective)
		C.perspective = last_perspective
	var/last_eye = C.eye
	C.eye = C.mob
	if(C.eye != last_eye)
		C.eye = last_eye

	// Recenter skybox and lighting.
	C.set_skybox_offsets(C.last_view_x_dim, C.last_view_y_dim)
	if(C.mob)
		if(C.mob.l_general)
			C.mob.l_general.fit_to_client_view(C.last_view_x_dim, C.last_view_y_dim)
		if(C.get_preference_value(/datum/client_preference/fullscreen_mode) != GLOB.PREF_OFF)
			C.mob.reload_fullscreen()

/client/proc/set_view(extra_view = 0)
	if(get_preference_value(/datum/client_preference/widescreen) == GLOB.PREF_YES)
		last_view_x_dim = WIDESCREEN_VIEW_X
		last_view_y_dim = WIDESCREEN_VIEW_Y
	else
		last_view_x_dim = NORMAL_VIEW_X
		last_view_y_dim = NORMAL_VIEW_Y
	var/desired_view = "[last_view_x_dim]x[last_view_y_dim]"
	if(view != desired_view)
		view = desired_view

#undef NORMAL_VIEW_X
#undef NORMAL_VIEW_Y

#undef WIDESCREEN_VIEW_X
#undef WIDESCREEN_VIEW_Y
