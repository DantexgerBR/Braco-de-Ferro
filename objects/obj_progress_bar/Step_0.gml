if (instance_exists(enemy1)) {
    if (enemy1.sprite_index == spr_enemyplayer) {
        progresso = 0.5 + (enemy1.image_index / 32); // Atualiza a barra para a metade direita para a animação de vitória
    } else if (enemy1.sprite_index == spr_enemyplayerlose) {
        progresso = 0.5 - (enemy1.image_index / 32); // Atualiza a barra para a metade esquerda para a animação de derrota
    }
}
