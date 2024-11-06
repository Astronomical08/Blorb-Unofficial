if room != menu && room != CSroom && room != opening
	{
//		if global.player != oPlayer
//		{
			if keyboard_check_pressed(vk_escape)
			{
				room_goto(menu)
			}
//		}
	}


	if global.player = oPlayer
	{
		if room = lobby
		{
		np_setpresence(global.LANG[16] + " Blorb", "Lobby", "blorbicon", "");
		}
		if room != lobby && room != CSroom
		{
		np_setpresence(global.LANG[16] + " Blorb", string(room_get_name(room)), "blorbicon", "");
		}
	}
	if global.player = oGameinyan
	{
		if room = lobby
		{
		np_setpresence(global.LANG[16] + " Gameinyan", "Lobby", "blorbicon", "");
		}
		if room != lobby && room != CSroom
		{
		np_setpresence(global.LANG[16] + " Gameinyan", string(room_get_name(room)), "blorbicon", "");
		}
	}
	if room = menu or room = CSroom
	{
	np_setpresence(global.LANG[14], global.LANG[15], "blorbicon", "");
	}