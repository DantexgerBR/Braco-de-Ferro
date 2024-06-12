draw_set_halign(fa_center); // Centraliza o texto horizontalmente
draw_set_valign(fa_middle); // Centraliza o texto verticalmente
draw_set_color(c_white); // Define a cor do texto como branca
draw_set_font(fnt_arial); // Define a fonte padrão

var text1 = "Depois de 5 segundos, a luta inicia!";
var text2 = "Aperte a letra 'A' para vencer!";
var text3 = "Cuidado com o ritmo, ou perde!";

var line_height = 24; // Altura estimada de cada linha

// Desenha a primeira linha
draw_text(room_width / 2, room_height / 2 - line_height, text1);
// Desenha a segunda linha
draw_text(room_width / 2, room_height / 2, text2);
// Desenha a terceira linha
draw_text(room_width / 2, room_height / 2 + line_height, text3);
