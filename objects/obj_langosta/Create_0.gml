/// @desc
gar_der = false;
gar_izq = false;
image_speed = 0.3;
iframe_state = false;//hay o no iframe
iframe_cd = 2;//duracion iframe
a_puntos_tf = false;
puede_moverse = true;
p_escogido = false;
id_p = 0;
hp = 12;
d_sound = 300;
speed = .5;
direction = random_range(0,359);
instance_create_layer(x,y,"capa_2",obj_claw);
instance_create_layer(x,y,"capa_2",obj_claw_1);
alarm_set(2,room_speed);