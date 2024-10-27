/// @desc 

if(hp <= 0){
	audio_play_sound(snd_rockfall,2,false);
	instance_destroy();
	global.burrow_account --;
}
if(state_creando==false){
	enemy_type_ct++;
alarm_set(0,cd_spwn*room_speed);
state_creando = true;
}
