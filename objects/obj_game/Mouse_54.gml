var _menu_items = [];
array_push(_menu_items, ["Spawn Monkey", SpawnMonkey]);

// Check if any monkey is selected
var _selected_flag = false;
for (var i = 0; i < array_length(global.monkey_list); i++) {
    if (global.monkey_list[i].selected) {
        _selected_flag = true;
        break; // Stop looping early once found
    }
}

if (_selected_flag) {
    array_push(_menu_items, ["Kill Monkey", KillMonkey]);
}

// Toggle Menu
if (!inMenu) {
    inMenu = true;
    Menu(mouse_x, mouse_y, _menu_items, "Options!");
} else {
    inMenu = false; // Reset on the controller, NOT inside with()
    with (obj_menu) {
        instance_destroy();
    }
}