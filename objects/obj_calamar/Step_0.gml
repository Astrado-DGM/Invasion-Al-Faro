/// @desc
randomize();
if(contador >= 3){
	dmg_redibido++;
	contador = 0;
}


if(dmg_redibido >= 8 && treshhold1 == false){
	treshhold1 = true;
	cd_tentaculos = 0.07;
	audio_play_sound(snd_low_roar,3,false);
if(object_exists(obj_burrow) == true){
	obj_burrow.numero_medusa = 5;
	obj_burrow.cd_spwn = 3;
}	
	
}

if(dmg_redibido>= 14 && treshhold2 == false){
	treshhold2 = true;
	cd_tentaculos = 0.04;
	if(object_exists(obj_burrow) == true){
	obj_burrow.cd_spwn = 2;
	obj_burrow.numero_medusa = 4;
}
	audio_play_sound(snd_low_roar,3,false);
}

var rand_angle = random_range(0,359);
var posicion_x = irandom_range(0,room_width);
if(dead != true){
if((posicion_x % 64)== 0 && wait == false){
	randomize();
	wait = true;
	instance_create_layer(x,y,"capa_2",obj_tentaculo,{image_angle : rand_angle});
	alarm_set(0,cd_tentaculos*room_speed);
}
}
	//if(obj_tentaculo.iframe_state == false){
	//	//sprite_index = spr_calamar_dmg;
	//	iframe_state = false;
	//}else{
	//	//sprite_index = spr_calamar;
	//	iframe_state = true;
	//}

if(dmg_redibido == 18){
	//fin de juego victoria mostrar puntajes
	dead = true;
	//show_debug_message("victoria")
	obj_fadewin.fade_tfw = true;
	obj_player.visible = false;	
	obj_player.dead = true;	
	obj_player.iframe_state = true;	
	
}