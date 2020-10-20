/// @description Triggers transition at death

if (o_player.dead == true) {
	SlideTransition(TRANS_MODE.RETRY, r_test_level);
}