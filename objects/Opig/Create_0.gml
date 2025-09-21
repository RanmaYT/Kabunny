is_certo=false 

// Velocidade aleatória
// Define velocidade aleatória
hsp = random_range(-10, 10);
vsp = random_range(-10, 10);

// Garante que eles não fiquem parados
if (abs(hsp) < 1) hsp = choose(-1.5, 1.5);
if (abs(vsp) < 1) vsp = choose(-1.5, 1.5);
