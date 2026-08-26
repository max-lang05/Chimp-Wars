// Calculate directional movement based on path progression
var _is_moving = (path_position < 1 && path_speed > 0);


if (!_is_moving) {
    image_speed = 0;
    image_index = 0;
} else {
    image_speed = 0.2;

    // Use direction along the path to set sprite
    var dir = direction;

    // Map 360 degrees to 8 directional sprites
    if (dir >= 22.5 && dir < 67.5)        sprite_index = spr_monkey_up_right;
    else if (dir >= 67.5 && dir < 112.5)  sprite_index = spr_monkey_up;
    else if (dir >= 112.5 && dir < 157.5) sprite_index = spr_monkey_up_left;
    else if (dir >= 157.5 && dir < 202.5) sprite_index = spr_monkey_left;
    else if (dir >= 202.5 && dir < 247.5) sprite_index = spr_monkey_down_left;
    else if (dir >= 247.5 && dir < 292.5) sprite_index = spr_monkey_down;
    else if (dir >= 292.5 && dir < 337.5) sprite_index = spr_monkey_down_right;
    else                                  sprite_index = spr_monkey_right;
}

if (selected && moving) {
    if (point_distance(x, y, target_x, target_y) < 5) {
        selected = false;
        moving = false;
    }
}


