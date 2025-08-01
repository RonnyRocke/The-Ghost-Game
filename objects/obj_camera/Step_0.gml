if (tremor_timer > 0) {
    camera_set_view_pos(view_camera[0],
        camera_get_view_x(view_camera[0]) + irandom_range(-2, 2),
        camera_get_view_y(view_camera[0]) + irandom_range(-2, 2)
    );
    tremor_timer -= 1;
}
