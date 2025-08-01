// Posição e tamanho EXATOS dos botões
if (!audio_is_playing(snd_musica_menu)) {
    audio_play_sound(snd_musica_menu, 1, true); // 1 = prioridade, true = loop
}

btn_start_x = 510;
btn_start_y = 320;
btn_start_w = 290;
btn_start_h = 65;

btn_quit_x = 510;
btn_quit_y = 400;
btn_quit_w = 290;
btn_quit_h = 65;
