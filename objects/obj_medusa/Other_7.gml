/// @desc
if(sprite_index == spr_medusa_death){
	audio_play_sound(snd_light_squash,2,false);
		instance_destroy();
		obj_player.puntaje += 3;
		instance_create_layer(x+ct_d,y,"capa_1",obj_sanguijuela);
		instance_create_layer(x-ct_d,y,"capa_1",obj_sanguijuela);
		instance_create_layer(x,y+ct_d,"capa_1",obj_sanguijuela);
		instance_create_layer(x,y-ct_d,"capa_1",obj_sanguijuela);
		instance_create_layer(x-ct_d*2,y-ct_d*2,"capa_1",obj_sanguijuela);
		instance_create_layer(x+ct_d*2,y+ct_d*2,"capa_1",obj_sanguijuela);
		instance_create_layer(x-ct_d*2,y+ct_d*2,"capa_1",obj_sanguijuela);
		instance_create_layer(x+ct_d*2,y-ct_d*2,"capa_1",obj_sanguijuela);
		
		
	}