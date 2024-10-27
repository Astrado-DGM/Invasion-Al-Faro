/// @desc
if(iframe_state == false){//si no estamos con frames de inmunidad puede recibir daño
	puede_moverse = true;
	sprite_index = spr_langosta_dmg;//sprite de iframe
	iframe_state = true;//decimos que tenemos el iframe
	image_speed = 2;
	alarm_set(1,iframe_cd*room_speed); //end of iframe
	if(hp>1){
		audio_play_sound(snd_filth_squash2,3,false);
	}
	hp-= obj_player.cant_dano;//restamos el daño respectivo
	
}