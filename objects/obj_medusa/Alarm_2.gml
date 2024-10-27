/// @desc

var dis = distance_to_object(obj_player);

if(dis <= d_sound){
	var volume = 1- min(dis/d_sound,1);
	audio_sound_gain(snd_buuble,volume,0.1);
	audio_play_sound(snd_buuble,1,false);
}

alarm_set(2,room_speed);