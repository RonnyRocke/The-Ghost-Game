contador += 1;

if (contador >= tempo_spawn) {
    contador = 0;

    var pos_x = irandom_range(0, room_width - sprite_width);
    instance_create_layer(pos_x, -32, "Instances", obj_heart);
}
