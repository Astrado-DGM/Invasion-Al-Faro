/// @desc

if(iframe_state == false){//si no estamos con frames de inmunidad puede recibir daño
	
	sprite_index = spr_burrow_dmg;//sprite de iframe
	iframe_state = true;//decimos que tenemos el iframe
	
	alarm_set(1,iframe_cd*room_speed); //end of iframe
	if(hp>1){
		audio_play_sound(snd__stone_hit,2,false);
	}
	hp-= obj_player.cant_dano;//restamos el daño respectivo
	
}




