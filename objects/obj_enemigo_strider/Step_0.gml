/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var d_p = distance_to_object(obj_player); //distancia a el jugador

if(d_p <= 30 && puede_dash == true){
	puede_dash=false;
	var dis = distance_to_object(obj_player);
	
	if(dis <= d_sound){
	var volume = 1- min(dis/d_sound,1);
		audio_sound_gain(snd_strider_atk,volume/2,0);
		audio_play_sound(snd_strider_atk,2,false);
	}
	move_towards_point(obj_player.x,obj_player.y,spd_dash);
	alarm_set(3,1*room_speed);
	alarm_set(1,cd_dash*room_speed);
}if(d_p >30){
	mp_potential_step (obj_player.x, obj_player.y, spd,false);//evita obstaculos para llegar al jugaro
	//move_towards_point(obj_player.x, obj_player.y,spd); //movimiento sin cerebro basico hacia jugador
}


if(x> obj_player.x){// si el mouse esta en cierto lado de pantalla rotamos imagen de pc
    image_xscale = 1;
}else{
    image_xscale = -1;
}

if(hp<=0){// 0 vida de destruye
	obj_player.puntaje++;
	audio_play_sound(snd_light_squash,2,false);
	instance_destroy();
}
