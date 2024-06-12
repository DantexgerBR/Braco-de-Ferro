// Desenha a barra de fundo
draw_sprite(spr_bar_bg, 0, bar_x, bar_y);

// Desenha a barra de preenchimento com base no progresso
draw_sprite_part(spr_bar_fill, 0, 0, 0, bar_width * progresso, bar_height, bar_x, bar_y);
