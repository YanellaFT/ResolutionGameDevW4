if (instance_exists(oDialog)) exit;

if (instance_exists(oPlayer) && distance_to_object(oPlayer) < 10) {
	open = true;
	if (keyboard_check_pressed(input_key)) {
		create_dialog(dialog);
	}
} else {
	open = false;
}