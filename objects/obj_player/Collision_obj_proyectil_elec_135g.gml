/// @description recibe daño de strider
// Puede escribir su código en este editor
if(iframe_state == false){//si no tenemos iframe
	image_speed = 0.5;//aumenta la velocidad de imagen
	sprite_index = spr_turista_dmg;//flasheamos con iframe
	audio_play_sound(snd_hurt,3,false);
	iframe_state = true;//decimos que tenemos iframe
	
	alarm_set(3,iframe_cd*room_speed); //end of iframe
	vida--;//nos restamos una cantidad de vida
	
}