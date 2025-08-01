var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// Mesmo tamanho e posições dos botões
var btn_width = 310;
var btn_height = 60;

var btn_start_x = 500;
var btn_start_y = 300;

var btn_quit_x = 500;
var btn_quit_y = 380;

if (mx > btn_start_x && mx < btn_start_x + btn_width &&
    my > btn_start_y && my < btn_start_y + btn_height) {
    room_goto(Room1); // troque pelo nome real da sua room
}

if (mx > btn_quit_x && mx < btn_quit_x + btn_width &&
    my > btn_quit_y && my < btn_quit_y + btn_height) {
    game_end();
}
