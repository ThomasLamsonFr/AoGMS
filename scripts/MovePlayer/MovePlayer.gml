///@description Move the player based on the various different controllers

// --------------------GAMEPAD--------------------

var xaxis = gamepad_axis_value(0, gp_axislh);
var yaxis = gamepad_axis_value(0, gp_axislv);

// --------------------KEYBOARD-------------------

if (keyboard_check(movementInputs[0])) {
	yaxis = -1;
}
if (keyboard_check(movementInputs[1])) {
	yaxis = 1;
	
}
if (keyboard_check(movementInputs[2])) {
	xaxis = -1;
}
if (keyboard_check(movementInputs[3])) {
	xaxis = 1
}

// MOVE

if ((xaxis != 0) || (yaxis != 0)) {
	x += xaxis * walkSpeed;
	y += yaxis * walkSpeed;
}
	
// CURRENT ANIMATION

if (xaxis > 0) {
	currentAnim = animRight;
}
if (xaxis < 0) {
	currentAnim = animLeft;
}
if (yaxis > 0) {
	currentAnim = animDown;
}
if (yaxis < 0) {
	currentAnim = animUp;
}

if ((xaxis == 0) && (yaxis == 0)) {
	sprite_index = currentAnim[0];
} else {
	sprite_index = currentAnim[1];
}