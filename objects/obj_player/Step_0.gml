// Movimento
if (keyboard_check(ord("A"))) {
    x -= velocidade;
    image_xscale = -abs(image_xscale);
}

if (keyboard_check(ord("D"))) {
    x += velocidade;
    image_xscale = abs(image_xscale);
}

// Limitar nas bordas com margem extra
var margem = 10;
x = clamp(x, sprite_width * abs(image_xscale) / 2 + margem, room_width - sprite_width * abs(image_xscale) / 2 - margem);
if (mensagem_timer > 0) {
    mensagem_timer -= 1;
}
