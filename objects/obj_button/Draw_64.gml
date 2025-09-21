var _mx = device_mouse_x_to_gui(0)
var _my = device_mouse_y_to_gui(0)
var _sprW = sprite_get_width(spr_play_button)/2;
var _sprH = sprite_get_height(spr_play_button)/2;
var _x1 = 300 + _sprW;
var _y1 = 375 + _sprH;


// Bloco de código caso esteja com o mouse no botão
if point_in_rectangle(_mx, _my, _x1 - _sprW, _y1 - _sprH, _x1 + _sprW, _y1 + _sprH) 
{
	balpha = 1;
	bscale = lerp(bscale, 1.2, 0.08)
	
	// O que acontece quando aperta o botão
	if mouse_check_button_pressed(mb_left) 
	{
		room_goto_next()
	}
}
else
{
	bscale = lerp(bscale, 1, 0.08);
	balpha = 0.6;
}

draw_sprite_ext(spr_play_button, 0, _x1, _y1, bscale, bscale, 0, c_white, balpha);
show_debug_message("DRAW");