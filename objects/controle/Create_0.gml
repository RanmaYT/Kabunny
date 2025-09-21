var total = 7;
var spacing = room_width / (total + 1);


// Escolhe uma posição aleatória para o alvo certo
var right_pos = irandom(total - 1);

for (var i = 0; i < total; i++) {
    var xpos = spacing * (i + 1);
    var ypos = 200;

    if (i == right_pos) {
        var target = instance_create_layer(xpos, ypos, "Instances", Opig);
    } else {
        var target = instance_create_layer(xpos, ypos, "Instances", Oteste1);
    }

    // Centraliza o sprite no ponto de criação (evita nascer fora da tela)
    target.x -= target.sprite_width / 2;
    target.y -= target.sprite_height / 2;
}

jogo_ativo = true; // ou false, dependendo de como você quer começar o jogo

// Inicializa a pontuação e tempo
pontos = 0;
tempo = 60; // Tempo inicial em segundos
reduziuTempo = false; // Para garantir que só reduza uma vez por clique errado

// Ativar contagem regressiva
alarm[0] = room_speed;

tempo_contador = room_speed; // por exemplo, 1 segundo (60 frames)


// obj_controle - Create
global.score = 0;
global.jogo_ativo = true;


//eu vou matar gays