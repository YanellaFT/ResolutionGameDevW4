var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap);

if (place_meeting(x, y, door)) {
	if (room == Room1) room_goto_next();
	else room_goto_previous();
}

if (place_meeting(x,y,coin)){
	instance_destroy();
}

if (_hor != 0 or _ver != 0){
	if (_hor <  0) sprite_index = spr_player_left;
	else if (_hor > 0) sprite_index = spr_player_right;
	else sprite_index = spr_player_normal;
}