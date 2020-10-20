/// @description Triggers transition at death

if (gem_counter == 3) {
	SlideTransition(TRANS_MODE.NEXT);
}

if (keyboard_check_pressed(vk_backspace)) {
	room_restart();
}