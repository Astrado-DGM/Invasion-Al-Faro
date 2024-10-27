/// @desc
if(iframe_state == false){//si no estamos con frames de inmunidad puede recibir daño
	sprite_index = spr_tentaculo_dmg;//sprite de iframe
	iframe_state = true;//decimos que tenemos el iframe
	
	alarm_set(4,iframe_cd*room_speed); //end of iframe
	if(obj_calamar.hp>1){
		audio_play_sound(snd_filth_squash2,2,false);
	}
	obj_calamar.hp -= obj_player.cant_dano;//restamos el daño respectivo
	obj_calamar.contador += obj_player.cant_dano;
}