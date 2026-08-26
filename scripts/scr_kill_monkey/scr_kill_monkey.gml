function KillMonkey() {
    var new_list = [];
    var to_destroy = [];

    // First pass: build new list and collect instances to destroy
    for (var i = 0; i < array_length(global.monkey_list); i++) {
        var m = global.monkey_list[i];

        if (!m.selected) {
            array_push(new_list, m);
        } else {
            array_push(to_destroy, m);
        }
    }

    // Replace the list
    global.monkey_list = new_list;

    // Second pass: destroy AFTER the list is rebuilt
    for (var i = 0; i < array_length(to_destroy); i++) {
        var inst = to_destroy[i];

        if (instance_exists(inst)) {
            var xx = inst.x;
            var yy = inst.y;

            effect_create_above(ef_explosion, xx+10, yy+10, 0.5, c_white);
            instance_destroy(inst);
        }
    }

    show_debug_message(global.monkey_list);
    show_debug_message(new_list);
}
