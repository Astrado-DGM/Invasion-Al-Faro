/// @desc
if(global.burrow_account <=3){
	var dis = distance_to_object(obj_player);
	
	if(dis <= d_sound){
	var volume = 1- min(dis/d_sound,1);
		audio_sound_gain(snd_burrow,volume,0);
		audio_play_sound(snd_burrow,1,false);
}
	instance_create_layer(x,y,"capa_2",obj_burrow);
	global.burrow_account++;
	
}
		
direction = random_range(0,359);
speed = 0.5;
configuraciones.cont_puntos --;
configuraciones.punto1_disponible = true;
alarm_set(0,2*room_speed);