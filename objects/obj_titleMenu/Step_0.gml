// Get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

// store number of options in current menu

option_lenght = array_length(option[menu_level])

// move through the menu

pos += down_key - up_key;

if pos >= option_lenght { pos = 0 }
if pos < 0 { pos = option_lenght - 1}

// Using the options
if accept_key 
{  
	var _sml = menu_level;
	
	switch(menu_level) {
		// pause menu
		case 0: 
		{
			switch (pos)
			{
				// Start game button
				case 0: room_goto_next(); break;
				// Quit game button
				case 1: game_end(); break;
				// Test button
				case 2: menu_level = 1; break;
			}
		}
		// test menu
		case 1:
			switch (pos)
			{
				case 0: break;
				case 1: break;
				case 2: break;
				case 3: menu_level = 0; break
			}
	
	
	}	
	
	if _sml != menu_level { pos = 0 }
	
	option_lenght = array_length(option[menu_level])
}