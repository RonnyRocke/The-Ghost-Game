if (instance_exists(obj_player)) {
    var player = instance_find(obj_player, 0);
    
    if (variable_instance_exists(player, "score")) {
        draw_set_font(fnt_pixel);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);

        // Pontuação - branco
        draw_set_color(c_white);
        draw_text(32, 32, "Pontos: " + string(player.score));

        if (player.mensagem_timer > 0) {
            var mensagem = "Atinga " + string(player.proxima_meta) + " coracoes!";
             x = 32;
             y = 64;

            // FADING ALPHA com base no tempo
            var alpha = clamp(player.mensagem_timer / 180, 0, 1);

            // PULSAÇÃO usando sin() com o tempo do jogo
            var brilho = 150 + sin(current_time * 0.01) * 80;

            // ROXO NEON (sombra)
            draw_set_alpha(alpha);
            draw_set_color(make_color_rgb(100, 0, brilho));
            draw_text(x + 1, y + 1, mensagem);
            draw_text(x - 1, y + 1, mensagem);
            draw_text(x + 1, y - 1, mensagem);
            draw_text(x - 1, y - 1, mensagem);

            // Texto principal (claro e pulsante)
            draw_set_color(make_color_rgb(200, 100, 255));
            draw_text(x, y, mensagem);

            // Restaura alpha ao normal
            draw_set_alpha(1);
        }
    }
}
