// Alvo certo clicado
// Aumenta a pontuação
// Aumenta a pontuação

// Move o alvo correto para uma nova posição

  if (global.jogo_ativo) {
    global.score += 1;

    // Move o alvo correto para nova posição
    x = irandom(room_width - sprite_width);
    y = irandom(room_height - sprite_height);

    // Cria 2 alvos errados
    for (var i = 0; i < 2; i++) {
        instance_create_layer(
            irandom(room_width - sprite_width),
            irandom(room_height - sprite_height),
            "Instances",
            Oteste1
        );
    }
}

