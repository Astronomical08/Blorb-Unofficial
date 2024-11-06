if global.Menu = 0
{
	sprite_index = OPTIONS_Hightlighted
}
if global.Menu != 0
{
	sprite_index = OPTIONS
}
if global.Menu = 0
{
	if keyboard_check_pressed(vk_space)
	{
		show_message("Sorry! " + string(environment_get_variable("USERNAME")) + ", " + string(object_get_name(object_index)) + " Appears to not be coded as of yet, It'll be worked on in a future build! - Ashley")
	}
	if keyboard_check_pressed(ord("5")) && file_exists("Settings_DEBUG.ini")
	{
		file_delete("Settings_DEBUG.ini")
		show_message(string(environment_get_variable("USERNAME")) + ", Controls Reset to Default!")
		if !file_exists("Settings_DEBUG.ini")
		{
			ini_open("Settings_DEBUG.ini")
			ini_write_string("Controls", "Jump", ord("Z"))
			ini_write_string("Controls", "Right", vk_right)
			ini_write_string("Controls", "Left", vk_left)
			ini_write_string("Controls", "Attack", ord("C"))
			ini_write_string("Controls", "Emote", ord("A"))
			ini_write_string("Controls", "Smoke",vk_down)
			ini_write_string("Controls", "Sprint",vk_lshift)
			ini_close();
		}
	}
	if keyboard_check_pressed(ord("E"))
	{
		if file_exists("Settings_DEBUG.ini")
		{
			
			ini_open("Settings_DEBUG.ini")
			global.JumpKey = ini_read_string("Controls", "Jump", global.JumpKey)
			global.RightKey= ini_read_string("Controls", "Right", global.RightKey)
			global.LeftKey = ini_read_string("Controls", "Left", global.LeftKey)
			global.AttackKey = ini_read_string("Controls", "Attack", global.AttackKey)
			global.EmoteKey = ini_read_string("Controls", "Emote", global.EmoteKey)
			global.SmokeKey = ini_read_string("Controls", "Smoke", global.SmokeKey)
			global.SprintKey = ini_read_string("Controls", "Sprint", global.SprintKey)
			show_message(string(environment_get_variable("USERNAME")) + ", The mappings in Settings_DEBUG.ini have been read (Your controls are remapped for stupid terms)")
			ini_close()
		}
		if !file_exists("Settings_DEBUG.ini")
		{
			ini_open("Settings_DEBUG.ini")
			ini_write_string("Controls", "Jump", ord("Z"))
			ini_write_string("Controls", "Right", vk_right)
			ini_write_string("Controls", "Left", vk_left)
			ini_write_string("Controls", "Attack", ord("C"))
			ini_write_string("Controls", "Emote", ord("A"))
			ini_write_string("Controls", "Smoke",vk_down)
			ini_write_string("Controls", "Sprint",vk_lshift)
			show_message(string(environment_get_variable("USERNAME")) + ", The Settings_DEBUG.ini file has been created successfully!")
			ini_close();
		}
	}
}
	if keyboard_check_pressed(ord(1))
	{
		if file_exists("Languages/" + string(global.Language_option[0]))
		{
			
			ini_open("Languages/" + string(global.Language_option[0]))
			global.LANG[0] = ini_read_string("CharacterSelect","CS1","The Star of The Show!")
			global.LANG[1] = ini_read_string("CharacterSelect","CS2","He can jump pretty high ig.")
			global.LANG[2] = ini_read_string("CharacterSelect","CS3","He's a little special.")
			global.LANG[3] = ini_read_string("CharacterSelect","CS4","Who's that Handsome Man")
			global.LANG[4] = ini_read_string("Huds","Blorb UI","blorui")
			global.LANG[5] = ini_read_string("Huds","Gameinyan UI","gameui")
			global.LANG[6] = ini_read_string("Huds","Trixter UI","trixui")
			global.LANG[7] = ini_read_string("Huds","Doug UI","dougui")
			global.LANG[8] = ini_read_string("Options","Video","Video Resolution:")
			global.LANG[9] = ini_read_string("Options","Audio","Volume:")
			global.LANG[10] = ini_read_string("Options","Fullscreen","Fullscreen:")
			global.LANG[11] = ini_read_string("Options","Discord RPC","Discord Rich Presence:")
			global.LANG[12] = ini_read_string("Options","Yes","Yes")
			global.LANG[13] = ini_read_string("Options","No","No")
			global.LANG[14] = ini_read_string("Discord RPC","In The Menus","In The Menus")
			global.LANG[15] = ini_read_string("Discord RPC","Boring.","Boring.")
			global.LANG[16] = ini_read_string("Discord RPC","Playing as","Playing as")
			np_setpresence(global.LANG[14], global.LANG[15], "blorbicon", "");
			if global.LANG[4] != "blorui"
			{
				if sprite_exists(global.LANG[4]) 
				{
				sprite_delete(global.LANG[4])
				}
				global.LANG[4] = sprite_add(global.LANG[4],1, false, false, 341 ,192)
			}
			if global.LANG[5] != "gameui"
			{
				if sprite_exists(global.LANG[5]) 
				{
				sprite_delete(global.LANG[5])
				}
				global.LANG[5] = sprite_add(global.LANG[5],1, false, false, 341 ,192)
			}
			if global.LANG[6] != "trixui"
			{
				if sprite_exists(global.LANG[6]) 
				{
				sprite_delete(global.LANG[6])
				}
				global.LANG[6] = sprite_add(global.LANG[4],1, false, false, 341 ,192)
			}
			if global.LANG[7] != "dougui"
			{
				if sprite_exists(global.LANG[7]) 
				{
				sprite_delete(global.LANG[7])
				}
				global.LANG[7] = sprite_add(global.LANG[4],1, false, false, 341 ,192)
			}
			show_message(filename_change_ext("Languages/" + string(global.Language_option[0]), "") + " Has Been Applied")
			ini_close()
		}
	}
		if keyboard_check_pressed(ord(2))
	{
		if file_exists("Languages/" + string(global.Language_option[1]))
		{
			
			ini_open("Languages/" + string(global.Language_option[1]))
			global.LANG[0] = ini_read_string("CharacterSelect","CS1","The Star of The Show!")
			global.LANG[1] = ini_read_string("CharacterSelect","CS2","He can jump pretty high ig.")
			global.LANG[2] = ini_read_string("CharacterSelect","CS3","He's a little special.")
			global.LANG[3] = ini_read_string("CharacterSelect","CS4","Who's that Handsome Man")
			global.LANG[4] = ini_read_string("Huds","Blorb UI","blorui")
			global.LANG[5] = ini_read_string("Huds","Gameinyan UI","gameui")
			global.LANG[6] = ini_read_string("Huds","Trixter UI","trixui")
			global.LANG[7] = ini_read_string("Huds","Doug UI","dougui")
			global.LANG[8] = ini_read_string("Options","Video","Video Resolution:")
			global.LANG[9] = ini_read_string("Options","Audio","Volume:")
			global.LANG[10] = ini_read_string("Options","Fullscreen","Fullscreen:")
			global.LANG[11] = ini_read_string("Options","Discord RPC","Discord Rich Presence:")
			global.LANG[12] = ini_read_string("Options","Yes","Yes")
			global.LANG[13] = ini_read_string("Options","No","No")
			global.LANG[14] = ini_read_string("Discord RPC","In The Menus","In The Menus")
			global.LANG[15] = ini_read_string("Discord RPC","Boring.","Boring.")
			global.LANG[16] = ini_read_string("Discord RPC","Playing as","Playing as")
			np_setpresence(global.LANG[14], global.LANG[15], "blorbicon", "");
			if global.LANG[4] != "blorui"
			{
				global.LANG[4] = sprite_add(global.LANG[4],1, false, false, 341 ,192)
			}
			if global.LANG[5] != "gameui"
			{
				global.LANG[5] = sprite_add(global.LANG[5],1, false, false, 341 ,192)
			}
			if global.LANG[6] != "trixui"
			{
				global.LANG[6] = sprite_add(global.LANG[6],1, false, false, 341 ,192)
			}
			if global.LANG[7] != "dougui"
			{
				global.LANG[7] = sprite_add(global.LANG[7],1, false, false, 341 ,192)
			}
			show_message(filename_change_ext("Languages/" + string(global.Language_option[1]), "") + " Has Been Applied")
			ini_close()
		}
	}
		if keyboard_check_pressed(ord(3))
	{
		if file_exists("Languages/" + string(global.Language_option[2]))
		{
			
			ini_open("Languages/" + string(global.Language_option[2]))
			global.LANG[0] = ini_read_string("CharacterSelect","CS1","The Star of The Show!")
			global.LANG[1] = ini_read_string("CharacterSelect","CS2","He can jump pretty high ig.")
			global.LANG[2] = ini_read_string("CharacterSelect","CS3","He's a little special.")
			global.LANG[3] = ini_read_string("CharacterSelect","CS4","Who's that Handsome Man")
			global.LANG[4] = ini_read_string("Huds","Blorb UI","blorui")
			global.LANG[5] = ini_read_string("Huds","Gameinyan UI","gameui")
			global.LANG[6] = ini_read_string("Huds","Trixter UI","trixui")
			global.LANG[7] = ini_read_string("Huds","Doug UI","dougui")
			global.LANG[8] = ini_read_string("Options","Video","Video Resolution:")
			global.LANG[9] = ini_read_string("Options","Audio","Volume:")
			global.LANG[10] = ini_read_string("Options","Fullscreen","Fullscreen:")
			global.LANG[11] = ini_read_string("Options","Discord RPC","Discord Rich Presence:")
			global.LANG[12] = ini_read_string("Options","Yes","Yes")
			global.LANG[13] = ini_read_string("Options","No","No")
			global.LANG[14] = ini_read_string("Discord RPC","In The Menus","In The Menus")
			global.LANG[15] = ini_read_string("Discord RPC","Boring.","Boring.")
			global.LANG[16] = ini_read_string("Discord RPC","Playing as","Playing as")
			np_setpresence(global.LANG[14], global.LANG[15], "blorbicon", "");
			if global.LANG[4] != "blorui"
			{
				global.LANG[4] = sprite_add(global.LANG[4],1, false, false, 341 ,192)
			}
			if global.LANG[5] != "gameui"
			{
				global.LANG[5] = sprite_add(global.LANG[5],1, false, false, 341 ,192)
			}
			if global.LANG[6] != "trixui"
			{
				global.LANG[6] = sprite_add(global.LANG[6],1, false, false, 341 ,192)
			}
			if global.LANG[7] != "dougui"
			{
				global.LANG[7] = sprite_add(global.LANG[7],1, false, false, 341 ,192)
			}
			show_message(filename_change_ext("Languages/" + string(global.Language_option[2]), "") + " Has Been Applied")
			ini_close()
		}
	}
	if keyboard_check_pressed(ord(4))
	{
		if file_exists("Languages/" + string(global.Language_option[3]))
		{
			
			ini_open("Languages/" + string(global.Language_option[3]))
			global.LANG[0] = ini_read_string("CharacterSelect","CS1","The Star of The Show!")
			global.LANG[1] = ini_read_string("CharacterSelect","CS2","He can jump pretty high ig.")
			global.LANG[2] = ini_read_string("CharacterSelect","CS3","He's a little special.")
			global.LANG[3] = ini_read_string("CharacterSelect","CS4","Who's that Handsome Man")
			global.LANG[4] = ini_read_string("Huds","Blorb UI","blorui")
			global.LANG[5] = ini_read_string("Huds","Gameinyan UI","gameui")
			global.LANG[6] = ini_read_string("Huds","Trixter UI","trixui")
			global.LANG[7] = ini_read_string("Huds","Doug UI","dougui")
			global.LANG[8] = ini_read_string("Options","Video","Video Resolution:")
			global.LANG[9] = ini_read_string("Options","Audio","Volume:")
			global.LANG[10] = ini_read_string("Options","Fullscreen","Fullscreen:")
			global.LANG[11] = ini_read_string("Options","Discord RPC","Discord Rich Presence:")
			global.LANG[12] = ini_read_string("Options","Yes","Yes")
			global.LANG[13] = ini_read_string("Options","No","No")
			global.LANG[14] = ini_read_string("Discord RPC","In The Menus","In The Menus")
			global.LANG[15] = ini_read_string("Discord RPC","Boring.","Boring.")
			global.LANG[16] = ini_read_string("Discord RPC","Playing as","Playing as")
			np_setpresence(global.LANG[14], global.LANG[15], "blorbicon", "");
			if global.LANG[4] != "blorui"
			{
				global.LANG[4] = sprite_add(global.LANG[4],1, false, false, 341 ,192)
			}
			if global.LANG[5] != "gameui"
			{
				global.LANG[5] = sprite_add(global.LANG[5],1, false, false, 341 ,192)
			}
			if global.LANG[6] != "trixui"
			{
				global.LANG[6] = sprite_add(global.LANG[6],1, false, false, 341 ,192)
			}
			if global.LANG[7] != "dougui"
			{
				global.LANG[7] = sprite_add(global.LANG[7],1, false, false, 341 ,192)
			}
			show_message(filename_change_ext("Languages/" + string(global.Language_option[3]), "") + " Has Been Applied")
			ini_close()
		}
	}
	if keyboard_check_pressed(ord(5))
	{
		if file_exists("Languages/" + string(global.Language_option[4]))
		{
			
			ini_open("Languages/" + string(global.Language_option[4]))
			global.LANG[0] = ini_read_string("CharacterSelect","CS1","The Star of The Show!")
			global.LANG[1] = ini_read_string("CharacterSelect","CS2","He can jump pretty high ig.")
			global.LANG[2] = ini_read_string("CharacterSelect","CS3","He's a little special.")
			global.LANG[3] = ini_read_string("CharacterSelect","CS4","Who's that Handsome Man")
			global.LANG[4] = ini_read_string("Huds","Blorb UI","blorui")
			global.LANG[5] = ini_read_string("Huds","Gameinyan UI","gameui")
			global.LANG[6] = ini_read_string("Huds","Trixter UI","trixui")
			global.LANG[7] = ini_read_string("Huds","Doug UI","dougui")
			global.LANG[8] = ini_read_string("Options","Video","Video Resolution:")
			global.LANG[9] = ini_read_string("Options","Audio","Volume:")
			global.LANG[10] = ini_read_string("Options","Fullscreen","Fullscreen:")
			global.LANG[11] = ini_read_string("Options","Discord RPC","Discord Rich Presence:")
			global.LANG[12] = ini_read_string("Options","Yes","Yes")
			global.LANG[13] = ini_read_string("Options","No","No")
			global.LANG[14] = ini_read_string("Discord RPC","In The Menus","In The Menus")
			global.LANG[15] = ini_read_string("Discord RPC","Boring.","Boring.")
			global.LANG[16] = ini_read_string("Discord RPC","Playing as","Playing as")
			np_setpresence(global.LANG[14], global.LANG[15], "blorbicon", "");
			if global.LANG[4] != "blorui"
			{
				global.LANG[4] = sprite_add(global.LANG[4],1, false, false, 341 ,192)
			}
			if global.LANG[5] != "gameui"
			{
				global.LANG[5] = sprite_add(global.LANG[5],1, false, false, 341 ,192)
			}
			if global.LANG[6] != "trixui"
			{
				global.LANG[6] = sprite_add(global.LANG[6],1, false, false, 341 ,192)
			}
			if global.LANG[7] != "dougui"
			{
				global.LANG[7] = sprite_add(global.LANG[7],1, false, false, 341 ,192)
			}
			show_message(filename_change_ext("Languages/" + string(global.Language_option[4]), "") + " Has Been Applied")
			ini_close()
		}
	}
	if keyboard_check_pressed(ord(6))
	{
		if file_exists("Languages/" + string(global.Language_option[5]))
		{
			
			ini_open("Languages/" + string(global.Language_option[5]))
			global.LANG[0] = ini_read_string("CharacterSelect","CS1","The Star of The Show!")
			global.LANG[1] = ini_read_string("CharacterSelect","CS2","He can jump pretty high ig.")
			global.LANG[2] = ini_read_string("CharacterSelect","CS3","He's a little special.")
			global.LANG[3] = ini_read_string("CharacterSelect","CS4","Who's that Handsome Man")
			global.LANG[4] = ini_read_string("Huds","Blorb UI","blorui")
			global.LANG[5] = ini_read_string("Huds","Gameinyan UI","gameui")
			global.LANG[6] = ini_read_string("Huds","Trixter UI","trixui")
			global.LANG[7] = ini_read_string("Huds","Doug UI","dougui")
			global.LANG[8] = ini_read_string("Options","Video","Video Resolution:")
			global.LANG[9] = ini_read_string("Options","Audio","Volume:")
			global.LANG[10] = ini_read_string("Options","Fullscreen","Fullscreen:")
			global.LANG[11] = ini_read_string("Options","Discord RPC","Discord Rich Presence:")
			global.LANG[12] = ini_read_string("Options","Yes","Yes")
			global.LANG[13] = ini_read_string("Options","No","No")
			global.LANG[14] = ini_read_string("Discord RPC","In The Menus","In The Menus")
			global.LANG[15] = ini_read_string("Discord RPC","Boring.","Boring.")
			global.LANG[16] = ini_read_string("Discord RPC","Playing as","Playing as")
			np_setpresence(global.LANG[14], global.LANG[15], "blorbicon", "");
			if global.LANG[4] != "blorui"
			{
				global.LANG[4] = sprite_add(global.LANG[4],1, false, false, 341 ,192)
			}
			if global.LANG[5] != "gameui"
			{
				global.LANG[5] = sprite_add(global.LANG[5],1, false, false, 341 ,0)
			}
			if global.LANG[6] != "trixui"
			{
				global.LANG[6] = sprite_add(global.LANG[6],1, false, false, 341 ,0)
			}
			if global.LANG[7] != "dougui"
			{
				global.LANG[7] = sprite_add(global.LANG[7],1, false, false, 341 ,0)
			}
			show_message(filename_change_ext("Languages/" + string(global.Language_option[5]), "") + " Has Been Applied")
			ini_close()
		}
	}
	if keyboard_check_pressed(ord(7))
	{
		if file_exists("Languages/" + string(global.Language_option[6]))
		{
			
			ini_open("Languages/" + string(global.Language_option[6]))
			global.LANG[0] = ini_read_string("CharacterSelect","CS1","The Star of The Show!")
			global.LANG[1] = ini_read_string("CharacterSelect","CS2","He can jump pretty high ig.")
			global.LANG[2] = ini_read_string("CharacterSelect","CS3","He's a little special.")
			global.LANG[3] = ini_read_string("CharacterSelect","CS4","Who's that Handsome Man")
			global.LANG[4] = ini_read_string("Huds","Blorb UI","blorui")
			global.LANG[5] = ini_read_string("Huds","Gameinyan UI","gameui")
			global.LANG[6] = ini_read_string("Huds","Trixter UI","trixui")
			global.LANG[7] = ini_read_string("Huds","Doug UI","dougui")
			global.LANG[8] = ini_read_string("Options","Video","Video Resolution:")
			global.LANG[9] = ini_read_string("Options","Audio","Volume:")
			global.LANG[10] = ini_read_string("Options","Fullscreen","Fullscreen:")
			global.LANG[11] = ini_read_string("Options","Discord RPC","Discord Rich Presence:")
			global.LANG[12] = ini_read_string("Options","Yes","Yes")
			global.LANG[13] = ini_read_string("Options","No","No")
			global.LANG[14] = ini_read_string("Discord RPC","In The Menus","In The Menus")
			global.LANG[15] = ini_read_string("Discord RPC","Boring.","Boring.")
			global.LANG[16] = ini_read_string("Discord RPC","Playing as","Playing as")
			np_setpresence(global.LANG[14], global.LANG[15], "blorbicon", "");
			if global.LANG[4] != "blorui"
			{
				global.LANG[4] = sprite_add(global.LANG[4],1, false, false, 341 ,192)
			}
			if global.LANG[5] != "gameui"
			{
				global.LANG[5] = sprite_add(global.LANG[5],1, false, false, 341 ,192)
			}
			if global.LANG[6] != "trixui"
			{                                          
				global.LANG[6] = sprite_add(global.LANG[6],1, false, false, 341 ,192)
			}
			if global.LANG[7] != "dougui"
			{
				global.LANG[7] = sprite_add(global.LANG[7],1, false, false, 341 ,192)
			}
			show_message(filename_change_ext("Languages/" + string(global.Language_option[6]), "") + " Has Been Applied")
			ini_close()
		}
	}
	if keyboard_check_pressed(ord(8))
	{
		if file_exists("Languages/" + string(global.Language_option[7]))
		{
			
			ini_open("Languages/" + string(global.Language_option[7]))
			global.LANG[0] = ini_read_string("CharacterSelect","CS1","The Star of The Show!")
			global.LANG[1] = ini_read_string("CharacterSelect","CS2","He can jump pretty high ig.")
			global.LANG[2] = ini_read_string("CharacterSelect","CS3","He's a little special.")
			global.LANG[3] = ini_read_string("CharacterSelect","CS4","Who's that Handsome Man")
			global.LANG[4] = ini_read_string("Huds","Blorb UI","blorui")
			global.LANG[5] = ini_read_string("Huds","Gameinyan UI","gameui")
			global.LANG[6] = ini_read_string("Huds","Trixter UI","trixui")
			global.LANG[7] = ini_read_string("Huds","Doug UI","dougui")
			global.LANG[8] = ini_read_string("Options","Video","Video Resolution:")
			global.LANG[9] = ini_read_string("Options","Audio","Volume:")
			global.LANG[10] = ini_read_string("Options","Fullscreen","Fullscreen:")
			global.LANG[11] = ini_read_string("Options","Discord RPC","Discord Rich Presence:")
			global.LANG[12] = ini_read_string("Options","Yes","Yes")
			global.LANG[13] = ini_read_string("Options","No","No")
			global.LANG[14] = ini_read_string("Discord RPC","In The Menus","In The Menus")
			global.LANG[15] = ini_read_string("Discord RPC","Boring.","Boring.")
			global.LANG[16] = ini_read_string("Discord RPC","Playing as","Playing as")
			np_setpresence(global.LANG[14], global.LANG[15], "blorbicon", "");
			if global.LANG[4] != "blorui"
			{
				global.LANG[4] = sprite_add(global.LANG[4],1, false, false, 341 ,192)
			}
			if global.LANG[5] != "gameui"
			{
				global.LANG[5] = sprite_add(global.LANG[5],1, false, false, 341 ,192)
			}
			if global.LANG[6] != "trixui"
			{                                          
				global.LANG[6] = sprite_add(global.LANG[6],1, false, false, 341 ,192)
			}
			if global.LANG[7] != "dougui"
			{
				global.LANG[7] = sprite_add(global.LANG[7],1, false, false, 341 ,192)
			}
			show_message(filename_change_ext("Languages/" + string(global.Language_option[7]), "") + " Has Been Applied")
			ini_close()
		}
	}
		if keyboard_check_pressed(ord(9))
	{
		if file_exists("Languages/" + string(global.Language_option[8]))
		{
			
			ini_open("Languages/" + string(global.Language_option[8]))
			global.LANG[0] = ini_read_string("CharacterSelect","CS1","The Star of The Show!")
			global.LANG[1] = ini_read_string("CharacterSelect","CS2","He can jump pretty high ig.")
			global.LANG[2] = ini_read_string("CharacterSelect","CS3","He's a little special.")
			global.LANG[3] = ini_read_string("CharacterSelect","CS4","Who's that Handsome Man")
			global.LANG[4] = ini_read_string("Huds","Blorb UI","blorui")
			global.LANG[5] = ini_read_string("Huds","Gameinyan UI","gameui")
			global.LANG[6] = ini_read_string("Huds","Trixter UI","trixui")
			global.LANG[7] = ini_read_string("Huds","Doug UI","dougui")
			global.LANG[8] = ini_read_string("Options","Video","Video Resolution:")
			global.LANG[9] = ini_read_string("Options","Audio","Volume:")
			global.LANG[10] = ini_read_string("Options","Fullscreen","Fullscreen:")
			global.LANG[11] = ini_read_string("Options","Discord RPC","Discord Rich Presence:")
			global.LANG[12] = ini_read_string("Options","Yes","Yes")
			global.LANG[13] = ini_read_string("Options","No","No")
			global.LANG[14] = ini_read_string("Discord RPC","In The Menus","In The Menus")
			global.LANG[15] = ini_read_string("Discord RPC","Boring.","Boring.")
			global.LANG[16] = ini_read_string("Discord RPC","Playing as","Playing as")
			np_setpresence(global.LANG[14], global.LANG[15], "blorbicon", "");
			if global.LANG[4] != "blorui"
			{
				global.LANG[4] = sprite_add(global.LANG[4],1, false, false, 341 ,192)
			}
			if global.LANG[5] != "gameui"
			{
				global.LANG[5] = sprite_add(global.LANG[5],1, false, false, 341 ,192)
			}
			if global.LANG[6] != "trixui"
			{                                          
				global.LANG[6] = sprite_add(global.LANG[6],1, false, false, 341 ,192)
			}
			if global.LANG[7] != "dougui"
			{
				global.LANG[7] = sprite_add(global.LANG[7],1, false, false, 341 ,192)
			}
			show_message(filename_change_ext("Languages/" + string(global.Language_option[8]), "") + " Has Been Applied")
			ini_close()
		}
	}
		if keyboard_check_pressed(ord(0))
	{
		if file_exists("Languages/" + string(global.Language_option[9]))
		{
			
			ini_open("Languages/" + string(global.Language_option[9]))
			global.LANG[0] = ini_read_string("CharacterSelect","CS1","The Star of The Show!")
			global.LANG[1] = ini_read_string("CharacterSelect","CS2","He can jump pretty high ig.")
			global.LANG[2] = ini_read_string("CharacterSelect","CS3","He's a little special.")
			global.LANG[3] = ini_read_string("CharacterSelect","CS4","Who's that Handsome Man")
			global.LANG[4] = ini_read_string("Huds","Blorb UI","blorui")
			global.LANG[5] = ini_read_string("Huds","Gameinyan UI","gameui")
			global.LANG[6] = ini_read_string("Huds","Trixter UI","trixui")
			global.LANG[7] = ini_read_string("Huds","Doug UI","dougui")
			global.LANG[8] = ini_read_string("Options","Video","Video Resolution:")
			global.LANG[9] = ini_read_string("Options","Audio","Volume:")
			global.LANG[10] = ini_read_string("Options","Fullscreen","Fullscreen:")
			global.LANG[11] = ini_read_string("Options","Discord RPC","Discord Rich Presence:")
			global.LANG[12] = ini_read_string("Options","Yes","Yes")
			global.LANG[13] = ini_read_string("Options","No","No")
			global.LANG[14] = ini_read_string("Discord RPC","In The Menus","In The Menus")
			global.LANG[15] = ini_read_string("Discord RPC","Boring.","Boring.")
			global.LANG[16] = ini_read_string("Discord RPC","Playing as","Playing as")
			np_setpresence(global.LANG[14], global.LANG[15], "blorbicon", "");
			if global.LANG[4] != "blorui"
			{
				global.LANG[4] = sprite_add(global.LANG[4],1, false, false, 341 ,192)
			}
			if global.LANG[5] != "gameui"
			{
				global.LANG[5] = sprite_add(global.LANG[5],1, false, false, 341 ,192)
			}
			if global.LANG[6] != "trixui"
			{                                          
				global.LANG[6] = sprite_add(global.LANG[6],1, false, false, 341 ,192)
			}
			if global.LANG[7] != "dougui"
			{
				global.LANG[7] = sprite_add(global.LANG[7],1, false, false, 341 ,192)
			}
			show_message(filename_change_ext("Languages/" + string(global.Language_option[9]), "") + " Has Been Applied")
			ini_close()
		}
	}
