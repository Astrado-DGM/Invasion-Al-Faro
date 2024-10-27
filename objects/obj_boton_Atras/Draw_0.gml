/// @desc
draw_self();

draw_set_font(fnt_fuente_base);

draw_set_halign(fa_center);

draw_set_valign(fa_middle);

draw_set_color(c_white);

draw_text_transformed(x, y, "ATRAS",1,1,0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_transformed(128,(window_get_height()/5)-40, "Sonidos:",2,2,0);
draw_text_transformed(128+300,(window_get_height()/5)-40, "obtenidos en 'freesound.org'",0.8,0.8,0);
draw_text(128,(window_get_height()/5), "'Filth squash2.wav by Angel_Perez_Grandi'");
draw_text(128,(window_get_height()/5) +36, "'Filth squash.wav by Angel_Perez_Grandi'");
draw_text(128,(window_get_height()/5) +36*2, "'Light Squash by Natty23'");
draw_text(128,(window_get_height()/5) +36*3, "'luffy_earth3.wav by luffy'");
draw_text(128,(window_get_height()/5) +36*4, "'Click by lebaston100'");
draw_text(128,(window_get_height()/5) +36*5, "'Electric shock.wav by LG'");
draw_text(128,(window_get_height()/5) +36*6, "'Creature Breath 2 by jacobalcook'");
draw_text_transformed(128,(window_get_height()/5)+36*7+46, "Arte / Musica / Programacion / todo lo demas:",1.8,1.8,0);
draw_text(128,(window_get_height()/5) +36*8+48, "  -Patricio 'Astrado' Jose Vejar Olivares");