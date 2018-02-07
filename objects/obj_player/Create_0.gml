// --------------------SPRITES--------------------

animUp[0] = spr_player_idle_up;
animUp[1] = spr_player_up;

animDown[0] = spr_player_idle_down;
animDown[1] = spr_player_down;

animLeft[0] = spr_player_idle_left;
animLeft[1] = spr_player_left;

animRight[0] = spr_player_idle_right;
animRight[1] = spr_player_right;

currentAnim = animDown;

// --------------------GAMEPAD--------------------

gamepad_set_axis_deadzone(0, 0.4);
gamepad_set_button_threshold(0, 0.1);

// --------------------KEYBOARD-------------------

movementKinputs[0] = ord("Z");
movementKinputs[1] = ord("S");
movementKinputs[2] = ord("Q");
movementKinputs[3] = ord("D");
movementKinputs[4] = vk_lshift;