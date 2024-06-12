draw_set_colour($FFFF002A & $ffffff); // Define a cor do texto como azul
draw_set_alpha(1); // Define a transparência do texto como 100%

draw_set_font(fnt_bulletproof); // Define a fonte

draw_set_halign(fa_center); // Centraliza horizontalmente
draw_set_valign(fa_middle); // Centraliza verticalmente

// Calcula a posição central da tela
var center_x = room_width / 2;
var center_y = room_height / 2;

// Desenha o texto "DEFEAT" no centro da tela
draw_text(center_x, center_y, "DEFEAT");
