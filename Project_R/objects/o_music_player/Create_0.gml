/// @description: handles menu music
/// @author Jpmcdc

// starts music
audio_play_sound(m_menu_bgm, 5, true);

// world 1 music
audio_play_sound(m_world_1_bgm, 5, true);
audio_sound_gain(m_world_1_bgm, 0, 0);

// loads the saved settings for music
if (o_savedata.music_on) {
	audio_sound_gain(m_menu_bgm, 0.2, 0);
} else {
	audio_sound_gain(m_menu_bgm, 0, 0);
}

// loads the saved settings for sounds
if (o_savedata.sound_on) {
	audio_sound_gain(sfx_error, 1, 0);
	audio_sound_gain(sfx_gem, 1, 0);
	audio_sound_gain(sfx_home, 0.6, 0);
	audio_sound_gain(sfx_menu_back, 1, 0);
	audio_sound_gain(sfx_menu_forward, 1, 0);
	audio_sound_gain(sfx_next_level, 1, 0);
	audio_sound_gain(sfx_retry, 1, 0);
	audio_sound_gain(sfx_settings, 0.6, 0);
} else {
	audio_sound_gain(sfx_error, 0, 0);
	audio_sound_gain(sfx_gem, 0, 0);
	audio_sound_gain(sfx_home, 0, 0);
	audio_sound_gain(sfx_menu_back, 0, 0);
	audio_sound_gain(sfx_menu_forward, 0, 0);
	audio_sound_gain(sfx_next_level, 0, 0);
	audio_sound_gain(sfx_retry, 0, 0);
	audio_sound_gain(sfx_settings, 0, 0);
}