#define NORMAL_VIEW_X 15
#define NORMAL_VIEW_Y 15

#define WIDESCREEN_VIEW_X 21
#define WIDESCREEN_VIEW_Y 15

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
