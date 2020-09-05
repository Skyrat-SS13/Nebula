/datum/controller/subsystem/shuttle/proc/ship_by_type(type)
	for (var/obj/effect/overmap/visitable/ship/ship in ships)
		if (ship.type == type)
			return ship
	return null
