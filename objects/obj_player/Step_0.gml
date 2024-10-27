/// @description controles y mas

// Puede escribir su código en este editor
#region CONTROLES
	var ctr_arriba = keyboard_check(vk_up)|| keyboard_check(ord("W"))
	var ctr_abajo = keyboard_check(vk_down)|| keyboard_check(ord("S"))
	var ctr_der = keyboard_check(vk_right)|| keyboard_check(ord("D"))
	var ctr_izq = keyboard_check(vk_left)|| keyboard_check(ord("A"))
	var ctr_ataque = keyboard_check(ord("C"))|| mouse_check_button(mb_left);
	var ctr_dash = keyboard_check_pressed(vk_space)
if(global.act_mando == true){
	var ctr_arriba = (gamepad_axis_value(global.gmp_id,gp_axislv) < 0);
	var ctr_abajo = (gamepad_axis_value(global.gmp_id,gp_axislv) > 0);
	var ctr_der = (gamepad_axis_value(global.gmp_id,gp_axislh) >0) ;
	var ctr_izq = (gamepad_axis_value(global.gmp_id,gp_axislh) <0);
	var ctr_ataque =gamepad_button_check_pressed(global.gmp_id,gp_shoulderr)|| gamepad_button_check_pressed(global.gmp_id,gp_face2);
	var ctr_dash = gamepad_button_check_pressed(global.gmp_id,gp_shoulderl) || gamepad_button_check_pressed(global.gmp_id,gp_face1);
}
//var ctr_arriba = keyboard_check(vk_up)|| keyboard_check(ord("W"))|| (gamepad_axis_value(global.gmp_id,gp_axislv) < 0);
//	var ctr_abajo = keyboard_check(vk_down)|| keyboard_check(ord("S"))|| (gamepad_axis_value(global.gmp_id,gp_axislv) > 0);
//	var ctr_der = keyboard_check(vk_right)|| keyboard_check(ord("D"))|| (gamepad_axis_value(global.gmp_id,gp_axislh) >0) ;
//	var ctr_izq = keyboard_check(vk_left)|| keyboard_check(ord("A"))|| (gamepad_axis_value(global.gmp_id,gp_axislh) <0);
//	var ctr_ataque = keyboard_check(ord("C"))||gamepad_button_check_pressed(global.gmp_id,gp_shoulderr) || mouse_check_button_pressed(mb_left);
//	var ctr_dash = keyboard_check_pressed(vk_space)||gamepad_button_check_pressed(global.gmp_id,gp_shoulderl);
#endregion
var wall_tf = place_meeting(x+1,y,obj_muro) ||place_meeting(x,y+1,obj_muro) ||place_meeting(x+1,y+1,obj_muro) ||place_meeting(x-1,y,obj_muro) ||place_meeting(x,y-1,obj_muro) ||place_meeting(x-1,y-1,obj_muro)|| place_meeting(x-1,y+1,obj_muro) ||place_meeting(x+1,y-1,obj_muro) || place_meeting(x+1,y,obj_muro_faro) ||place_meeting(x,y+1,obj_muro_faro) ||place_meeting(x+1,y+1,obj_muro_faro) ||place_meeting(x-1,y,obj_muro_faro) ||place_meeting(x,y-1,obj_muro_faro) ||place_meeting(x-1,y-1,obj_muro_faro)|| place_meeting(x-1,y+1,obj_muro_faro) ||place_meeting(x+1,y-1,obj_muro_faro);



if(dead == false){
if(!iframe_state && puede_atacar){image_speed = 0.1;}//si no se mueve y no tiene iframe imagenspeed = 0
if(gamepad_is_connected(global.gmp_id) && global.act_mando == true){
	
	
	mv_viewx= x+gamepad_axis_value(0, gp_axisrh);
	mv_viewy = y+gamepad_axis_value(0, gp_axisrv);
	var pd = point_direction(x,y, mv_viewx, mv_viewy); //dirrecion de ataque
}else{
		mv_viewx = mouse_x;
		mv_viewy = mouse_y;
		var pd = point_direction(x, y, mv_viewx, mv_viewy); //dirrecion de ataque
}

dd = angle_difference(pd,0);//angulo de ataque



if(mv_viewx > x){// si el mouse esta en cierto lado de pantalla rotamos imagen de pc
    image_xscale = 1;
}else{
    image_xscale = -1;
}

#region MOVIMIENTO

hsp=0;
vsp=0;

//arreglo de bug velocidad diagonal 
if((ctr_arriba && ctr_der) || (ctr_arriba && ctr_izq)||(ctr_abajo && ctr_der) || (ctr_abajo && ctr_izq)){
	spd_player = 3.5*0.707;//lol
}else{
	spd_player = 3.5;
}

if(ctr_izq && place_meeting(x-spd_player,y,obj_muro) == false&& place_meeting(x-spd_player,y,obj_muro_faro) == false){//izquierda
	hsp = -spd_player;
	if(!iframe_state){image_speed = 0.3;}// si no tiene iframe hace animacion de movimiento
}
if(ctr_der && place_meeting(x+spd_player,y,obj_muro) == false&& place_meeting(x+spd_player,y,obj_muro_faro) == false){//derecha
	hsp = spd_player;
	if(!iframe_state){image_speed = 0.3}// si no tiene iframe hace animacion de movimiento
}
if(ctr_arriba&& place_meeting(x,y-spd_player,obj_muro) == false&& place_meeting(x,y-spd_player,obj_muro_faro) == false){//arriba
	vsp =-spd_player;
	if(!iframe_state){image_speed = 0.3;}// si no tiene iframe hace animacion de movimiento
}
if(ctr_abajo && place_meeting(x,y+spd_player,obj_muro) == false&& place_meeting(x,y+spd_player,obj_muro_faro) == false){//abajo
	vsp =spd_player;
	if(!iframe_state){image_speed = 0.3;}// si no tiene iframe hace animacion de movimiento
}




if( wall_tf == true){
	speed = 0;
}
//dashes
if(ctr_dash && usos_dash > 0 && puede_dash==true ){
	puede_dash=false;
	usos_dash--;
	iframe_state = true;
	move_towards_point(mv_viewx,mv_viewy,spd_dash);
	alarm_set(1,duracion_dash*room_speed);
	
}
if(usos_dash >3){ 
	usos_dash = 3;
	}

if(usos_dash < 3 && timmer == false){
	timmer = true;
	alarm_set(0,carga_dash*room_speed);
}



#endregion

if(keyboard_check(vk_escape) ){
	
		room_goto(rMenu);
}
#region ATAQUES
if(cant_ataques == 2){
	cd_ataque = cd_ataque_og+.4;
}else{
	cd_ataque = cd_ataque_og;
}
if(ctr_ataque && puede_atacar == true){
	if(sprite_index != spr_turista_dmg){
	image_speed =0.5;
	sprite_index = spr_turista_atack;
	}
	move_towards_point(mv_viewx,mv_viewy,0.02);
	puede_atacar = false;
	cant_ataques++;
	var ataX = x+ lengthdir_x(distaciona_ataque_ply, dd);
	var ataY = y+ lengthdir_y(distaciona_ataque_ply, dd);
	instance_create_layer(ataX,ataY,"capa_0",obj_ataque);
	audio_play_sound(snd_atack,1,false);
	alarm_set(2,cd_ataque*room_speed); //reiniciamos a true el puede atacar tras cierta cantidad de tiempo
}
#endregion
if(vida <= 0 && fd == false){
	dead = true
	obj_fade.fade_tf = true;
	visible = false;
	fd = true;
	//show_debug_message("muerto");
	
}

x+= hsp;
y+= vsp;
}else{
	vsp = 0;
	hsp = 0;
}
