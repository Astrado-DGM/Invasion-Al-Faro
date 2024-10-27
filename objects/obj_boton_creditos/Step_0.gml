/// @desc
 hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);
if (hovering && mouse_check_button_pressed(mb_left)) 
{
	
	audio_play_sound(snd_button_clicking,11,false);
	if(audio_is_playing(snd_beach_far_02)){
		audio_stop_sound(snd_beach_far_02);
	}
	image_index = 1;	
	room_goto(rCreditos);
} else{
	image_index = 2;
}