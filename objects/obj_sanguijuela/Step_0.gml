/// @desc
var pd = point_direction(x,y,obj_player.x,obj_player.y);
var dd = angle_difference(pd,0);
image_angle = dd

	mp_potential_step_object(obj_player.x, obj_player.y, spd,obj_muro_faro);//evita obstaculos para llegar al jugador
	

if(hp<=0){// 0 vida de destruye
	
	spd = 0;
	image_speed=0.2;
	sprite_index = spr_sanguijuela_death;
	
}
