var _mx = device_mouse_x_to_gui(0)
var _my = device_mouse_y_to_gui(0)

/*
var _x2 = 400;
var _y2 = 250

if point_in_rectangle(_mx, _my, _x1, _y1, _x2, _y2) 
{
	balpha = 1;
	
	if mouse_check_button_pressed(mb_left) 
	{
		show_question("oi");
	}
}
else 
{
	balpha = 0.6;
}

draw_set_alpha(balpha)
draw_button(_x1, _y1, _x2, _y2, !mouse_check_button(mb_left))
draw_set_alpha(1) */

var _sprW = sprite_get_width(spr_button_play)/2;
var _sprH = sprite_get_height(spr_button_play)/2;
var _x1 = 250 + _sprW;
var _y1 = 400 + _sprH;

if point_in_rectangle(_mx, _my, _x1 - _sprW, _y1 - _sprH, _x1 + _sprW, _y1 + _sprH) 
{
	balpha = 1;
	bscale = lerp(bscale,	1.2, 0.08);
	
	if mouse_check_button_pressed(mb_left) 
	{
		show_debug_message("Botão apertado");	
	}

}
else
{
	bscale = lerp(bscale, 1, 0.08);
	balpha = 0.6;
}

draw_sprite_ext(spr_button_play, 0, _x1, _y1, bscale, bscale, 0, c_white, balpha);