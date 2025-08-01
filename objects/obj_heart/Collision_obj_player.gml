audio_play_sound(snd_coletar, 2, false);

// Criar partículas
for (var i = 0; i < 6; i++) {
    instance_create_layer(x, y, "Instances", obj_particula);
}

// Tremor
if (instance_exists(obj_camera)) {
    obj_camera.tremor_timer = 5;
}

// Garantir score existe
if (!variable_instance_exists(other, "score")) {
    other.score = 0;
}

other.score += 1;

// Inicializar metas se necessário
if (!variable_instance_exists(other, "proxima_meta")) {
    other.proxima_meta = 30;
    other.mensagem_timer = 0;
}

// Meta atingida
if (other.score >= other.proxima_meta) {
    other.proxima_meta += 30;
    other.mensagem_timer = 180;
    audio_play_sound(snd_meta, 3, false);
}

instance_destroy();
