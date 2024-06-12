// Inicializa as variáveis
image_speed = 0;
animacao_iniciada = false;
animacao_terminada = false;
resistencia_inimigo = 0;
max_resistencia_inimigo = 5; // resistência máxima do inimigo, pode ser ajustada
frames_vitoria = 0; // frames de vitória do jogador
frames_derrota = 0; // frames de derrota do jogador

// Espera 5 segundos para iniciar o jogo
alarm[0] = room_speed * 5;
