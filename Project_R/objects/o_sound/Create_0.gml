/// @description helps set up certain variables
/// @author: Juan Pablo Martinez

image_speed = 0;

// loads the correct setting from savedata
if (o_savedata.sound_on) {
	image_index = 0;
} else {
	image_index = 2;
}