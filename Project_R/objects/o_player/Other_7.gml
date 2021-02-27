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
	
	var inst = instance_create_layer(o_player.x , o_player.y - 60, "Popup", o_retry_death);
} 
