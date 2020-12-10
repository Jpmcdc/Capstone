/// @description handles player pressing btn
/// @author: Juan Pablo Martinez

if (visible) {
	// allows transition to targetted room
	SlideTransition(TRANS_MODE.GOTO, r_world_1);

	// plays sfx
	audio_play_sound(sfx_home, 5, false);

	// resets music
	if (o_savedata.music_on) {
		audio_sound_gain(m_menu_bgm, 0.2, 1000);
		audio_sound_gain(m_world_1_bgm, 0, 1000);
	}
}
