// Alvo errado clicado
if (controle.jogo_ativo) {
    // Punição: diminui 2 segundos
    controle.tempo = max(0, controle.tempo - 1);

    // Destroi o alvo errado clicado (opcional)
    
}
// Reduz tempo só uma vez
if (!controle.reduziuTempo) {
    controle.tempo -= 5; // Reduz 5 segundos, por exemplo
    controle.reduziuTempo = true;
}

// Destroi o alvo errado (opcional)
instance_destroy();


// Quando clicar no alvo errado
show_message("You lose!");
game_end(); // Encerra o jogo
