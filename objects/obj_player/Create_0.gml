/// @description estadisticas y datos base
mv_viewx = 0;
mv_viewy = 0;
fd = false;
dd= angle_difference(0,0);
dead = false;
gamepad_set_axis_deadzone(0,0.7);
global.act_mando = false;
vida = 18;
image_speed = 0; // velocidad de imagen al crearse
cant_dano = 1;//daño base
cd_ataque = 0.3;//duracion entre ataques
cd_ataque_og = 0.3;//duracion entre ataques
cant_ataques =0;//contador de ataques
puede_atacar = true;//estado bool para no hacer ataques a la vez
distaciona_ataque_ply = 24; //rango de creacion de ataque

iframe_state = false; //estado bool de iframe
iframe_cd = 2.5; //duracion iframe

spd_player = 3.5; //velocidad jugador

usos_dash = 3; //cantidad de dashes total
puede_dash =true; // no puede usar dash durante un dash
spd_dash = 8; //velocidad dash (importante esta conectado con duracion d)
duracion_dash = 0.2 //cuanto dura haciendo un dash
carga_dash = 3; // cada 3s un dash nuevo /tiempo de recarga
//alarm_set(0,carga_dash*room_speed); // inici

timmer = false;



hsp=0;
vsp=0;

puntaje = 0;