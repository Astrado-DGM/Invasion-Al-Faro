/// @desc
hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);
if (hovering && mouse_check_button_pressed(mb_left) && control == true && waiter == false) 
{	
	audio_play_sound(snd_button_clicking,11,false);
	global.act_mando = true;
	image_index = 1;
	waiter = true;
	control = false;
	alarm_set(0,2);
} 
 
if (hovering && mouse_check_button_pressed(mb_left) && control == false && waiter == false) 
{
	audio_play_sound(snd_button_clicking,11,false);
	global.act_mando = false;
	image_index = 2;
	waiter = true;
	alarm_set(0,2);
	control = true;
} 
