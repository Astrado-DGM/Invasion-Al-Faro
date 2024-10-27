/// @desc
if(iframe_state == false){//si no estamos con frames de inmunidad puede recibir daño
	spd  = -0.9;
	alarm_set(3,.5*room_speed);
	image_speed = 2;
	sprite_index = spr_sanguijuela_dmg;//sprite de iframe
	iframe_state = true;//decimos que tenemos el iframe
	
	alarm_set(0,iframe_cd*room_speed); //end of iframe
	if(hp>1){
		audio_play_sound(snd_filth_squash2,2,false);
	}
	hp-= obj_player.cant_dano;//restamos el daño respectivo
	
}