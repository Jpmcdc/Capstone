/// @This code updates every frame of the game
/// @author: Juan Pablo Martinez

// handles horizontal velocity
if (!idle) { x += hsp; }

// handles vertical velocity
if (!idle) { y += vsp; }

// handles wall collision
if (place_meeting(x, y, o_wall)) {
	
	// flips player sprite
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

// jump check
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || mouse_check_button_pressed(mb_left);

// gravity applied
vsp += grav;

// jump
if (allowed_jumps > 0) && (key_up)  {
	vsp = jump_height;
	allowed_jumps--;
}

// reset jump count
if (place_meeting(x, y + 1, o_floor)) {
	allowed_jumps = 1;	
}

// animation
if (!dead) and (!idle) {
	if (!place_meeting(x, y + 1, o_floor)) {
		sprite_index = s_player_jump;
	} else {
	
		// resets running sprite
		sprite_index = s_player_run;
	}
}


// handles vertical collision
if (place_meeting(x, y + vsp, o_floor)) {
	while (!place_meeting(x, y + sign(vsp), o_floor)) {
		y += grav;	
	}

	// resets vertical speed
	vsp = 0;
}

