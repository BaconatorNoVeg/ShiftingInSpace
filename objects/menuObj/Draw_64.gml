//sets text to draw in the bottom right corner
draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < menuItems; i++) {
	var
	xx = menuX,
	yy = menuY - (menuItemHeight * (i * 1.5)),
	col,
	offset = 2,
	txt = menuSelect[i];
	//Show which option is selected
	if(menuCursor == i) {
		txt = string_insert("> ", txt, 0);
		col = c_white
	}
	else {
		col = c_gray;
	}	
	
	//draws same text underneath in black around the white text
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}