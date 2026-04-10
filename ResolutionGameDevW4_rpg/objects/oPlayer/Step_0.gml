if (instance_exists(oDialog)) exit;
/*
if (keyboard_check_pressed(vk_space)) {
	create_dialog([
	{
		msg: "testtt"
	}
	])
}*/


var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap);

if (place_meeting(x, y, door) ) {
	if (points >=3) {
		 room_goto(Room2);
		points = points - 3;
	}
	else {
		room_goto(Room1);
	}
}
/*
if (place_meeting(x,y,bl)) {
	if (points >= 2) {
		battery += 5;
	}
}*/
/*
global.points = 0;
global.battery_lvl = 10;

if (place_meeting(x,y,bl) and points >= 2) {
	battery_lvl += 3;
}*/


if (_hor != 0 or _ver != 0){
	if (_hor <  0) sprite_index = spr_player_left;
	else if (_hor > 0) sprite_index = spr_player_right;
	else sprite_index = spr_player_normal;
	
	facing =  point_direction(0, 0, _hor, _ver);
}
else {
	if (sprite_index == spr_player_normal) sprite_index = spr_player_normal_sit;
	else if (sprite_index == spr_player_right) sprite_index = spr_player_right_sit;
	else if (sprite_index == spr_player_left) sprite_index = spr_player_left_sit;
	
}

if (keyboard_check_pressed(vk_space)) {
	var _inst = instance_create_depth(x, y, depth, oAttack);
	_inst.image_angle = facing;
	_inst.damage *= damage;
}	