draw_self(); // Desenha a imagem do menu

// Propriedades visuais da borda
var border_alpha = 0.35;
var border_color = c_white;
var border_width = 3;

// Desenhar borda no botão START quando o mouse está sobre ele
if (point_in_rectangle(mouse_x, mouse_y, btn_start_x, btn_start_y, btn_start_x + btn_start_w, btn_start_y + btn_start_h)) {
    draw_set_color(border_color);
    draw_set_alpha(border_alpha);
    draw_rectangle(btn_start_x, btn_start_y, btn_start_x + btn_start_w, btn_start_y + btn_start_h, false);
}

// Desenhar borda no botão QUIT quando o mouse está sobre ele
if (point_in_rectangle(mouse_x, mouse_y, btn_quit_x, btn_quit_y, btn_quit_x + btn_quit_w, btn_quit_y + btn_quit_h)) {
    draw_set_color(border_color);
    draw_set_alpha(border_alpha);
    draw_rectangle(btn_quit_x, btn_quit_y, btn_quit_x + btn_quit_w, btn_quit_y + btn_quit_h, false);
}

// Resetar valores padrão
draw_set_alpha(1);
draw_set_color(c_white);
