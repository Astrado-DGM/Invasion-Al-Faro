/// @desc cada tiemppo genera un strider


if(enemy_type_ct==numero_medusa){
	enemy_type_ct = 0;
	instance_create_layer(x,y-32,"capa_1",obj_medusa);
}else{
	instance_create_layer(x,y-32,"capa_1",obj_enemigo_strider);
}
var dis = distance_to_object(obj_player);
	
	if(dis <= d_sound){
	var volume = 1- min(dis/d_sound,1);
		audio_sound_gain(snd_burrow_spawn,volume,0);
		audio_play_sound(snd_burrow_spawn,2,false);
}

state_creando = false;