/obj/effect/step_trigger/message
	var/message	//the message to give to the mob
	var/once = 1

/obj/effect/step_trigger/message/Trigger(mob/M)
	if(M.client)
		to_chat(M, "<span class='info'>[message]</span>")
		if(once)
			qdel(src)

/obj/effect/step_trigger/teleport_fancy
	var/locationx
	var/locationy
	var/uses = 1	//0 for infinite uses
	var/entersparks = 0
	var/exitsparks = 0
	var/entersmoke = 0
	var/exitsmoke = 0

/obj/effect/step_trigger/teleport_fancy/Trigger(mob/M)
	var/dest = locate(locationx, locationy, z)
	M.Move(dest)

	if(entersparks)
		spark_at(src, amount=4, cardinal_only = TRUE)
	if(exitsparks)
		spark_at(dest, amount=4, cardinal_only = TRUE)

	if(entersmoke)
		var/datum/effect/effect/system/smoke_spread/s = new /datum/effect/effect/system/smoke_spread
		s.set_up(4, 1, src, 0)
		s.start()
	if(exitsmoke)
		var/datum/effect/effect/system/smoke_spread/s = new /datum/effect/effect/system/smoke_spread
		s.set_up(4, 1, dest, 0)
		s.start()

	uses--
	if(uses == 0)
		qdel(src)