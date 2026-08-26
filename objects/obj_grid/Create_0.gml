var _cell_size = 16;
var _hcells = room_width / _cell_size;
var _vcells = room_height / _cell_size;

global.mp_grid = mp_grid_create(0, 0, _hcells, _vcells, _cell_size, _cell_size);

var _layer_id = layer_get_id("tl_hard");
var _tilemap_id = layer_tilemap_get_id(_layer_id);

for (var i = 0; i < _hcells; i++) {
    for (var j = 0; j < _vcells; j++) {
        // tilemap_get checks cell column (i) and row (j) directly
        if (tilemap_get(_tilemap_id, i, j) > 0) {
            mp_grid_add_cell(global.mp_grid, i, j);
        }
    }
}