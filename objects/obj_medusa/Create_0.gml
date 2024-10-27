/// @desc
/// @description estadisticas base y mas
// Puede escribir su código en este editor
image_speed = 0.25; // velocidad sprite 
ct_d = 16;
hp=7; //vida duh
cd_ataque = 3;
atacando = true;
speed = 0.4;//velocidad enemigo
iframe_state = false;//hay o no iframe
iframe_cd = 1.5;//duracion iframe
alarm_set(1,cd_ataque*room_speed);
d_sound=300;
alarm_set(2,room_speed);