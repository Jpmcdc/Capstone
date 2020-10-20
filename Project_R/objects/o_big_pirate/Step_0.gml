/// @description: This code updates every frame of the game
/// @author: Juan Pablo Martinez

// handles horizontal velocity
x += hsp;

// handles wall collision
if (place_meeting(x, y, o_enemy_wall)) {
	
	// flips enemy sprite
	image_xscale = -image_xscale; 	
	
	// flip running direction
	hsp = -hsp;	
	
	// position correction
	if (hsp > 0) {
		x += -55;
	} else {
		x += 55;
	}
}
