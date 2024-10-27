/// @desc
draw_set_font(fnt_fuente_base);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	var size = display_get_gui_width() 
var syze = display_get_gui_height();
var str = "PUNTAJE:"+string(obj_player.puntaje);
if(fade_tfw == false && image_alpha >= 0.4){
	draw_text(size/2, syze/2-256, "¡ V I C T O R I A !");
	draw_text(size/2, syze/2, str);
	draw_text(size/2, syze/2+128, "PRESIONE CUALQUIER TECLA PARA IR AL MENU PRINCIPAL");
	
}