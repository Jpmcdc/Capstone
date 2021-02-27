/// @description: This code updates every frame of the game
/// @author: Juan Pablo Martinez

// handles horizontal velocity
if (!idle) and (!dead) { x += hsp; }

// handles vertical velocity
y += vsp; 

// handles wall collision
if (place_meeting(x, y, o_wall) && (!dead)) {
	
	// flips player sprite
	image_xscale = -image_xscale; 	
	
	// flip running direction
	hsp = -hsp;	
	
	// extra jump on wall bounce
	allowed_jumps ++;
	
	// position correction
	if (hsp > 0) {
		x += -55;
	} else {
		x += 55;
	}
} else if (place_meeting(x, y, o_wall) && (dead)) {
	hsp = 0;
}

// jump check
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || mouse_check_button_pressed(mb_left);

// gravity applied
vsp += grav;

// jump
if (allowed_jumps > 0) && (key_up) && (!idle) && (!dead) {
	vsp = jump_height;
	allowed_jumps--;
}

// reset jump count
if (place_meeting(x, y + 1, o_floor)) {
	allowed_jumps = 1;	
}

// handles idle animation
if (idle) { sprite_index = s_player_idle; }

// handles non idle animations
if (!dead) and (!idle) {
	if (!place_meeting(x, y + 1, o_floor)) {
		sprite_index = s_player_jump;
	} else {
		sprite_index = s_player_run;
	}
// sets death animation
} else if (dead) {
	sprite_index = s_player_dead;
}


// handles vertical collision
if (place_meeting(x, y + vsp, o_floor)) {
	while (!place_meeting(x, y + sign(vsp), o_floor)) {
		y += grav;	
	}

	// resets vertical speed
	vsp = 0;
}

// handles character moving after idle
if (key_up) && (idle) {
	idle = false;
}

// handles roof collision
if (place_meeting(x, y - 1, o_roof)) {
	vsp ++;	
}

// disable double click
device_mouse_dbclick_enable(false);