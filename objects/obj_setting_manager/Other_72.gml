if (audio_group_is_loaded(ag_mus)){
	audio_group_set_gain(ag_mus, global.music, 0.25);
	audio_play_sound(mus_nim_game, 0, true);
}