if (alarm[0] < 0) {
	battery -= other.damage;
	alarm[0] = 60;
	image_blend = c_purple;
	
	if (battery <= 0) {
		room_restart();
	}
}