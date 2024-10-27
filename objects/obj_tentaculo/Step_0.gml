/// @desc
randomize();
if(image_yscale <= 1){
	image_yscale =1;
}
var wait_cd = round(random_range(1,7));
//if(irandom_range(0,10) == 10 && wait == false){
	if(atacando == false && retrocede == false){
		if(estirando == false){
			estirando = true;
			alarm_set(1,vl_ataque*room_speed);
		}
		if(distancia >= d_max){
			atacando = true
			retrocede =true;
		}
	}

if(retrocede == true){
	if(set = false){
		wait = true;
		set = true;
		alarm_set(2,vl_retro*room_speed);
		alarm_set(3,wait_cd*room_speed);
		
	}
	if(distancia <= 0){
		instance_destroy()
		retrocede = false;
		atacando = false;
	}


}