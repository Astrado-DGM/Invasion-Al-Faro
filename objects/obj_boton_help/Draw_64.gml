/// @desc
var size = display_get_gui_width() 
var syze = display_get_gui_height();
if(control == true){
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text((size/3)*2,(syze/3)*2, "Moverse: WASD / flechas / Analogo izquierdo (Mando)");
	draw_text((size/3)*2,(syze/3)*2 +24, "Puntero: Mouse / Analogo derecho (Mando) ");
	draw_text((size/3)*2,(syze/3)*2 +24*2, "Atacar: MB (mouse) / C / RB (Mando) / A (mando)");
	draw_text((size/3)*2,(syze/3)*2 +24*3, "Dash: Espacio / LB (Mando) / X (mando)");
	draw_text((size/3)*2,(syze/3)*2 +24*4, "Escape: Volver al menu");
	draw_text((size/3)*2,(syze/3)*2 +24*5, ": El dash te da inmunidad por un breve periodo de tiempo :");
	draw_text((size/3)*2,(syze/3)*2 +24*6, ": Trata de conseguir la mayor de cantidad de puntos mientras liberas el faro! :");
	
}