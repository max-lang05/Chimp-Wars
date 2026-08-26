function SpawnMonkey(){
	
	_tilemap = layer_tilemap_get_id("tl_hard");
	
	
	
	
	if (!tilemap_get_at_pixel(_tilemap, mouse_x-50, mouse_y-50)){
		instance = instance_create_depth(mouse_x-50,mouse_y-50,0,obj_monkey)
		with (obj_monkey){
			array_push(global.monkey_list, id)
		}
		
	}
}