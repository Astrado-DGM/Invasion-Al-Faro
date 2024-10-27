/// @description deteccin gamepad
// Puede escribir su código en este editor
for(var i=0; i<gamepad_get_device_count();i++){
	if(gamepad_is_connected(i)){
		global.gmp_id = i;
	}
	
}
if(langostaD!= false){
	alarm_set(0,2*room_speed);
}
if(object_exists(obj_punto) == false){
	punto1_disponible = true;
}
if(object_exists(obj_punto2) == false){
	punto2_disponible = true;
}
if(object_exists(obj_punto3) == false){
	punto3_disponible = true;
}
var x1 = (random_range(160,1206));
var y1 = (random_range(430,1717));
if(position_meeting(x1,y1,obj_muro)== false){
	if(cont_puntos <global.cant_max_puntos){
	
		if(punto1_disponible == true){
			instance_create_layer(x1,y1,"capa_0",obj_punto);
			punto1_disponible = false;
		}else if(punto2_disponible == true){
			instance_create_layer(x1,y1,"capa_0",obj_punto2);
			punto2_disponible = false;
		}else if(punto3_disponible == true){
			instance_create_layer(x1,y1,"capa_0",obj_punto3);
			punto3_disponible = false;
		}
			cont_puntos++;
			set_already = false;
		
	}
}

//if(set_already == false){
//	set_already = true;
//	alarm_set(0,cd_puntos*room_speed);
//}
if(global.burrow_account < 0){global.burrow_account = 0;}