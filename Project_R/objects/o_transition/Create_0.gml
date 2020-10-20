/// @description: Set up for transition screens

//w = display_get_width();
//h = display_get_height();

w = 900;
h = 600;

h_half = h/2;

enum TRANS_MODE {
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO,
	RETRY
}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;

per_target = 1.2;