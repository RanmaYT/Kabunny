// Rebater com base no sprite_width e height
// Movimento
x += hsp;
y += vsp;

// Rebater nas bordas da sala
if (x <= 0 || x >= room_width - sprite_width) {
    hsp = -hsp;
}

if (y <= 0 || y >= room_height - sprite_height) {
    vsp = -vsp;
}

