
if (selecting)
{
	draw_set_colour(c_aqua)
    var x1 = min(select_x1, select_x2);
    var y1 = min(select_y1, select_y2);

    var x2 = max(select_x1, select_x2);
    var y2 = max(select_y1, select_y2);

    draw_set_alpha(0.3);
    draw_rectangle(x1, y1, x2, y2, false);

    draw_set_alpha(1);
    draw_rectangle(x1, y1, x2, y2, true);
}