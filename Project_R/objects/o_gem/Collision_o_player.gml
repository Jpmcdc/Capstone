/// @description handles collision with o_player
// @author: Juan Pablo Martinez

if (!o_player.dead) {
	o_logic.gem_counter ++;
	instance_destroy();
}
