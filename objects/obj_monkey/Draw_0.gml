draw_self();


if (selected){
	draw_set_colour(c_green)
	draw_triangle(x+5,y-5,x+9,y-5,x+7,y-1,false)

}


if (selected && moving){
draw_set_color(c_orange);
// Horizontal line
draw_line_width(target_x - 10, target_y-10, target_x + 10, target_y+10,2);
// Vertical line
draw_line_width(target_x+10, target_y - 10, target_x-10, target_y+10,2)
}

draw_set_color(c_white);