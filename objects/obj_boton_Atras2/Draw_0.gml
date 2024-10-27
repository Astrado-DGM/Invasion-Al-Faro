/// @desc
draw_self();

draw_set_font(fnt_fuente_base);

draw_set_halign(fa_center);

draw_set_valign(fa_middle);

draw_set_color(c_white);
var size = display_get_gui_width() 
var syze = display_get_gui_height();
draw_text_transformed(x, y, "ATRAS",1,1,0);
draw_sprite(testbgmjuls,0,size/2,syze/2-40);