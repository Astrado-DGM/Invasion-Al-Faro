/// @desc

if(object_exists(obj_punto) && object_exists(obj_punto2) && object_exists(obj_punto3)){
	a_puntos_tf = true;
}
if(p_escogido == false){
	p_escogido = true;
	id_p = irandom_range(1,3);
	
}
if(object_exists(obj_claw) != true ){
		instance_create_layer(x,y,"capa_2",obj_claw);
}
if(object_exists(obj_claw_1)!= true){
	instance_create_layer(x,y,"capa_2",obj_claw_1);
}
if(direction <90 || direction > 270){
	image_xscale = 1
	obj_claw.x = x+26
	obj_claw.y = y+10
	obj_claw.image_xscale=1
	
	obj_claw_1.x = x+12
	obj_claw_1.y = y+16
	obj_claw_1.image_xscale=1
	
}else if(direction>90 || direction < 270){
	image_xscale = -1;	
	obj_claw.x = x-26
	obj_claw.y = y+10
	obj_claw.image_xscale=-1
	
	obj_claw_1.x = x-12
	obj_claw_1.y = y+16
	obj_claw_1.image_xscale=-1
}
	
if(p_escogido = true && puede_moverse == true && a_puntos_tf == true){
	puede_moverse = false;
	
	if(id_p = 1){
		direction = point_direction(x,y,obj_punto.x,obj_punto.y);
		speed = 3.5
	}else if(id_p = 2){
		direction = point_direction(x,y,obj_punto2.x,obj_punto2.y);
		speed = 3.5
	}else if(id_p = 3){
		direction = point_direction(x,y,obj_punto3.x,obj_punto3.y);
		speed = 3.5
	}
	
}
if(hp <= 0){
	obj_player.puntaje +=5;
	configuraciones.langostaD = true;
	audio_play_sound(snd_filth_squash2,2,false);
	instance_destroy();
}
