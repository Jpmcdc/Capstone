/// @description handles collision with o_player
// @author: Juan Pablo Martinez

if (!o_player.dead) {
	o_game_logic.gem_counter ++;
	instance_destroy();
	
	// plays sfx
	audio_play_sound(sfx_gem, 5, false);
}
