if (animacao_iniciada && !animacao_terminada) {
    // Verifica se a tecla "A" foi pressionada
    if (keyboard_check(ord("A"))) {
        frames_vitoria++;
        frames_derrota = 0; // Reseta os frames de derrota

        if (frames_vitoria >= resistencia_inimigo) {
            // Avança para o próximo frame da animação de vitória
            if (sprite_index == spr_enemyplayerlose) {
                image_index = max(image_index - 1, 0); // Reverte a animação de derrota
                if (image_index == 0) {
                    sprite_index = spr_enemyplayer; // Muda para a animação de vitória
                }
            } else {
                sprite_index = spr_enemyplayer;
                image_index = min(image_index + 1, 16); // 16 frames de animação
            }
            frames_vitoria = 0; // Reseta progresso
            resistencia_inimigo = irandom_range(1, max_resistencia_inimigo); // Nova resistência
        }
    } else {
        frames_derrota++;
        frames_vitoria = 0; // Reseta os frames de vitória

        if (frames_derrota >= max_resistencia_inimigo) {
            // Retrocede na animação de derrota (inimigo ganha)
            if (sprite_index == spr_enemyplayer) {
                image_index = max(image_index - 1, 0); // Reverte a animação de vitória
                if (image_index == 0) {
                    sprite_index = spr_enemyplayerlose; // Muda para a animação de derrota
                }
            } else {
                sprite_index = spr_enemyplayerlose;
                image_index = min(image_index + 1, 16); // 16 frames de animação
            }
            frames_derrota = 0; // Reseta progresso
        }
    }

    // Verifica se o jogador ganhou
    if (sprite_index == spr_enemyplayer && image_index == 16) {
        animacao_terminada = true;
        room_goto(rm_victory);
    }

    // Verifica se o inimigo ganhou
    if (sprite_index == spr_enemyplayerlose && image_index == 16) {
        animacao_terminada = true;
        room_goto(rm_defeat);
    }
}
