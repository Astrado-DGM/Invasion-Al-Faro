/// @description Datos base y cantidad de daño/tipo spr


image_angle = obj_player.dd; //se crea con el mismo angulo que el mouse/jugador
duracion_ataque = 0.2; //cantidad de tiempo que el sprite/objeto dura
alarm_set(0,duracion_ataque*room_speed);
image_speed = .8
//si es el tercer ataque es mas fuerte y tiene mas cd y otro sprite
if(obj_player.cant_ataques == 3){
	sprite_index= spr_ataqueF;
	obj_player.cant_dano = 2;	
	obj_player.cant_ataques = 0; //resetea el contador de ataques
}else{
	sprite_indes = spr_atack; 
	obj_player.cant_dano = 1;	
}