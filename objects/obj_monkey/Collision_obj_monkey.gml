// 1. Get your tilemap ID (Replace "Tiles_Walls" with your actual Tile Layer name from the room editor)
var _tilemap = layer_tilemap_get_id("tl_hard");

// 2. Unit-to-Unit Soft Pushing
var _push_speed = 1;

with (object_index) {
    if (id != other.id) {
        if (place_meeting(x, y, other)) {
            var _dir = point_direction(other.x, other.y, x, y);
            var _push_x = lengthdir_x(_push_speed, _dir);
            var _push_y = lengthdir_y(_push_speed, _dir);
            
            // Push X only if target tile is empty
            if (tilemap_get_at_pixel(_tilemap, x + _push_x, y) == 0) {
                x += _push_x;
            }
            
            // Push Y only if target tile is empty
            if (tilemap_get_at_pixel(_tilemap, x, y + _push_y) == 0) {
                y += _push_y;
            }
        }
    }
}