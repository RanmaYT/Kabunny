var amplifier = 1.2;

// Dinamically calculate width and height
var new_w = 0;
for (var i = 0; i < option_lenght; i++)
{
	var op_w = string_width(option[menu_level, i]);
	new_w = max(new_w, op_w);
}

width = new_w + op_border * 2
height = op_border*2 + string_height(option[0, 0]) + (option_lenght-1)*op_space;

// center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2 - 270;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2;

// Draw the menu background
draw_sprite_ext(sprite_index, image_index, x, y , width/sprite_width * amplifier, height/sprite_height * amplifier, 0, c_white, 255);

// Draw options

draw_set_font(fArial);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for(var i = 0; i < option_lenght; i++)
{
	var _c = c_white;
	if pos == i {_c = c_yellow}
	draw_text_color(x + op_border * amplifier, y + op_border * amplifier + op_space*i * amplifier, option[menu_level, i], _c, _c, _c, _c, 1);
}
