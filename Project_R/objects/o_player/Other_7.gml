/// @description: Handles animation end when dead
/// @author: Juan Pablo Martinez

// handles player death
if (dead) {
	// stops animation at death
	image_speed = 0;
	
	// stops horizontal movement at death
	while (hsp > 0) {
		hsp -= 0.5;
	}
}