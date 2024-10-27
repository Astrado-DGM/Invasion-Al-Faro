/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
set_already = false;
langostaD = false;
global.cant_max_puntos = 10;
punto1_disponible = false;
punto2_disponible = false;
punto3_disponible = false;
cont_puntos =0;

global.burrow_account = 1;
cd_puntos = 0.02;
//x-100, x+100 y+100,y-100 rango de no poner el punto
global.gmp_id=0; 
//instance_create_layer(room_width/2,room_height/2,"capa_0",obj_calamar);
instance_create_layer(x,y,"capa_2",obj_cursor_ataque);
