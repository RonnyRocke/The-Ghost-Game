y += velocidade_queda;

// Se sair da tela, destrói
if (y > room_height + sprite_height) {
    instance_destroy();
}
