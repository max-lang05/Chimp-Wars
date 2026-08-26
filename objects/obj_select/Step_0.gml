// Start selection
if (mouse_check_button_pressed(mb_left))
{
    selecting = true;

    select_x1 = mouse_x;
    select_y1 = mouse_y;
}

// Update selection rectangle
if (selecting)
{
    select_x2 = mouse_x;
    select_y2 = mouse_y;
}

// Finish selection
if (mouse_check_button_released(mb_left))
{
    var x1 = min(select_x1, select_x2);
    var y1 = min(select_y1, select_y2);
    var x2 = max(select_x1, select_x2);
    var y2 = max(select_y1, select_y2);

	for(i = 0; i < array_length(global.monkey_list); i++){
		var monkey = global.monkey_list[i]
	    with (monkey)
	    {
	        if (monkey.x >= x1 && monkey.x <= x2 &&
	            monkey.y >= y1 && monkey.y <= y2)
	        {
	            monkey.selected = true;
	        }
	    }
	}

	    selecting = false;
}