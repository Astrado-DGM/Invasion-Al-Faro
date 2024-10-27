/// @desc

//move_towards_point(obj_player.x, obj_player.y,spd); //movimiento sin cerebro basico hacia jugador

if(atacando = false){
	atacando = true;
	var dis = distance_to_object(obj_player);
	
	if(dis <= d_sound){
	var volume = 1- min(dis/d_sound,1);
		audio_sound_gain(snd_electric,volume,0);
		audio_play_sound(snd_electric,1,false);
}
	
		instance_create_layer(x,y,"capa_2",obj_proyectil_elec_0g);
		instance_create_layer(x,y,"capa_2",obj_proyectil_elec_45g);
		instance_create_layer(x,y,"capa_2",obj_proyectil_elec_90g);
		instance_create_layer(x,y,"capa_2",obj_proyectil_elec_135g);
		instance_create_layer(x,y,"capa_2",obj_proyectil_elec_180g);
		instance_create_layer(x,y,"capa_2",obj_proyectil_elec_225g);
		instance_create_layer(x,y,"capa_2",obj_proyectil_elec_270g);
		instance_create_layer(x,y,"capa_2",obj_proyectil_elec_315g);
		
		
	alarm_set(1,cd_ataque*room_speed);
}

if(hp<=0){// 0 vida de destruye
	
	spd = 0;
	image_speed=0.2;
	sprite_index = spr_medusa_death;
	
}
