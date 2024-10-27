/// @description datos debugg
// Puede escribir su código en este editor

//draw_text( 120,5,"DASH: "+string(usos_dash) );
//draw_text( 240,5,"HP: "+string(vida) );
draw_sprite(spr_player_bar,18-vida,0,32);
draw_sprite(spr_player_dash,3-usos_dash,0,32);
draw_text( display_get_gui_width()-124,32,"Puntaje: "+string(puntaje) );
//draw_text( window_get_width()-248,5,"Vida Calamar"+string(obj_calamar.hp) );
//draw_text( 5,window_get_height()-32,"BETA");
//draw_text( 5,5, "CD DASH: "+string(ceil( alarm[0]/room_speed)) );
//draw_text( 5,20, "Duracion Dash: "+string(ceil( alarm[1]/room_speed)) );
//draw_text( 5,35, "CD ATAQUE: "+string(ceil( alarm[2]/room_speed)) );
