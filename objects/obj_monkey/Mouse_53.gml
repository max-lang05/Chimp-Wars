target_x = mouse_x;
target_y = mouse_y;

show_debug_message(target_x)
show_debug_message(target_y)
// Generate a path avoiding obstacles defined in the grid
if (selected) {
    if (mp_grid_path(global.mp_grid, path, x, y, target_x, target_y, true) && !obj_game.inMenu) {
        moving = true; // 🔥 mark that this unit is now moving
        path_start(path, move_speed, path_action_stop, false);
    }
}

