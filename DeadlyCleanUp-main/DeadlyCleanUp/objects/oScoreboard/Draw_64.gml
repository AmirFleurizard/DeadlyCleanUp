draw_set_color(c_black);
if(lives > 0){
	draw_set_halign(fa_left);
	draw_text(32,48,"Score: " + string(score));
	draw_text(32,72,"Lives: " + string(lives));
} else {
	draw_set_halign(fa_center);
	draw_text(view_wport[0]/2,view_hport[0]/2 - 128,"Game Over!");
	draw_text(view_wport[0]/2,view_hport[0]/2,"Your final score was " + string(score));
	draw_text(view_wport[0]/2,view_hport[0]/2 + 128,"Press the 'R' key to restart!");
}
if(room == rOcean){
	draw_line_width(-4, view_yport[1] - 4, view_wport[1]+2, view_yport[1] - 4, 4);
	draw_line_width(view_wport[1], view_yport[1] - 4, view_wport[1], view_yport[1] + view_hport[1], 4);
}