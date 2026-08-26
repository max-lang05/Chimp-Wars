if (keyboard_check_pressed(ord("A")) && keyboard_check(vk_control)){
	for(var i=0; i < array_length(global.monkey_list); i++){
		global.monkey_list[i].selected = true
	}
}