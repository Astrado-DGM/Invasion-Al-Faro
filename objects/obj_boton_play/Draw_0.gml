/// @desc
draw_self();

draw_set_font(fnt_fuente_base);

draw_set_halign(fa_center);

draw_set_valign(fa_middle);

draw_set_color(c_white);

draw_text_transformed(x, y, "JUGAR",2,2,0);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
var size = display_get_gui_width() 
var syze = display_get_gui_height();
draw_text_transformed(size-32,syze-32, "V: alpha.0.0.4",1,1,0);