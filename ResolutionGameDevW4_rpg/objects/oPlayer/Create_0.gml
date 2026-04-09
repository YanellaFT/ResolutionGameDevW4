move_speed = 2;

tilemap = layer_tilemap_get_id("tile_collision");

door = layer_tilemap_get_id("tile_move");

bl =  layer_tilemap_get_id("tile_room1");
tl =  layer_tilemap_get_id("tile_room2");
tr =  layer_tilemap_get_id("tile_room3");
br = layer_tilemap_get_id("tile_room4");
top = layer_tilemap_get_id("tile_room5");


battery = 10;
battery_total = battery
damage = 1;

facing = 0;

level = 1;
xp = 0;
xp_needed = 100;

function add_xp(_xp_to_add) {
	xp += _xp_to_add;
	if (xp >= xp_needed) {
		/*level ++;
		xp -= xp_needed;
		xp_needed *= 1.4;*/
		
		battery_total += 5;
		battery = batery_total;
		damage += 0.8;
		
	}
}