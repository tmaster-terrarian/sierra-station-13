/mob/living/silicon/pai/death(gibbed)
	if(stat == DEAD)
		return
	stat = DEAD
	update_mobility()
	update_sight()
	wipe_fullscreens()

	//New pAI's get a brand new mind to prevent meta stuff from their previous life. This new mind causes problems down the line if it's not deleted here.
	remove_from_alive_mob_list()
	ghostize()
	qdel(src)
