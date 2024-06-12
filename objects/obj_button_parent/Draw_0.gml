/// Draw the buttons

draw_self();

draw_set_font(fnt_squarefont);
draw_set_color(c_black);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y-12, button_text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
