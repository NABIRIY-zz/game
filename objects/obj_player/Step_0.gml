/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 52CAC481
/// @DnDArgument : "code" "event_inherited();$(13_10)var move_right = (keyboard_check(vk_right) || keyboard_check(ord("D")));$(13_10)var move_left = (keyboard_check(vk_left) || keyboard_check(ord("A")));$(13_10)var move_up = (keyboard_check(vk_up) || keyboard_check(ord("W")));$(13_10)var move_down = (keyboard_check(vk_down) || keyboard_check(ord("S")));$(13_10)var Move = move_down or move_up or move_left or move_right;$(13_10)var centrPlayerX = x+2;$(13_10)var centrPlayerY = y+2;$(13_10)var damagePositionX = centrPlayerX;$(13_10)var damagePositionY = centrPlayerY$(13_10)$(13_10)hp = clamp(hp, 0, 100);$(13_10)$(13_10)if(move_right)$(13_10){$(13_10)	phy_position_x += speed_player;$(13_10)	damagePositionX = centrPlayerX+damageDistance;$(13_10)	damagePositionY = centrPlayerY;$(13_10)	image_speed = player_image_speed;$(13_10)}$(13_10)if(move_left)$(13_10){$(13_10)	phy_position_x -= speed_player;$(13_10)	damagePositionX = centrPlayerX-damageDistance;$(13_10)	damagePositionY = centrPlayerY;$(13_10)}$(13_10)if(move_up)$(13_10){$(13_10)	sprite_index = hero_move_up;$(13_10)	phy_position_y -= speed_player;$(13_10)	damagePositionX = centrPlayerX;$(13_10)	damagePositionY = centrPlayerY-damageDistance;$(13_10)}$(13_10)if(move_down)$(13_10){$(13_10)	sprite_index = hero_move_down;$(13_10)	phy_position_y += speed_player;$(13_10)	damagePositionX = centrPlayerX;$(13_10)	damagePositionY = centrPlayerY+damageDistance;$(13_10)}$(13_10)if(freez) alarm[0] = 1;$(13_10)if(Move and start_move_sound_play)$(13_10){$(13_10)	audio_play_sound(sound_start_fire, 0, 0); //Звук зажигания огня при начале движения$(13_10)	start_move_sound_play = false;$(13_10)}$(13_10)if(!Move)$(13_10){$(13_10)	sprite_index = hero_dead;$(13_10)	if(hp <= 0) image_index = 9; //Доделать: скорость анимации должна совпадать с колличесвтом хп$(13_10)	if(!start_move_sound_play)$(13_10)	{$(13_10)		audio_play_sound(sound_stop_fire, 0, 0);$(13_10)		start_move_sound_play = true;$(13_10)	}$(13_10)	alarm[1] = 0;$(13_10)}$(13_10)else alarm[1] = 1;$(13_10)if(keyboard_check_pressed(ord("E")))$(13_10){$(13_10)	audio_play_sound(sound_fire_hit, 0, 0);$(13_10)	var createdObjDamage = instance_create_depth(damagePositionX,damagePositionY,0,obj_damage);$(13_10)	createdObjDamage.creator = id;$(13_10)}$(13_10)"
event_inherited();
var move_right = (keyboard_check(vk_right) || keyboard_check(ord("D")));
var move_left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
var move_up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
var move_down = (keyboard_check(vk_down) || keyboard_check(ord("S")));
var Move = move_down or move_up or move_left or move_right;
var centrPlayerX = x+2;
var centrPlayerY = y+2;
var damagePositionX = centrPlayerX;
var damagePositionY = centrPlayerY

hp = clamp(hp, 0, 100);

if(move_right)
{
	phy_position_x += speed_player;
	damagePositionX = centrPlayerX+damageDistance;
	damagePositionY = centrPlayerY;
	image_speed = player_image_speed;
}
if(move_left)
{
	phy_position_x -= speed_player;
	damagePositionX = centrPlayerX-damageDistance;
	damagePositionY = centrPlayerY;
}
if(move_up)
{
	sprite_index = hero_move_up;
	phy_position_y -= speed_player;
	damagePositionX = centrPlayerX;
	damagePositionY = centrPlayerY-damageDistance;
}
if(move_down)
{
	sprite_index = hero_move_down;
	phy_position_y += speed_player;
	damagePositionX = centrPlayerX;
	damagePositionY = centrPlayerY+damageDistance;
}
if(freez) alarm[0] = 1;
if(Move and start_move_sound_play)
{
	audio_play_sound(sound_start_fire, 0, 0); //Звук зажигания огня при начале движения
	start_move_sound_play = false;
}
if(!Move)
{
	sprite_index = hero_dead;
	if(hp <= 0) image_index = 9; //Доделать: скорость анимации должна совпадать с колличесвтом хп
	if(!start_move_sound_play)
	{
		audio_play_sound(sound_stop_fire, 0, 0);
		start_move_sound_play = true;
	}
	alarm[1] = 0;
}
else alarm[1] = 1;
if(keyboard_check_pressed(ord("E")))
{
	audio_play_sound(sound_fire_hit, 0, 0);
	var createdObjDamage = instance_create_depth(damagePositionX,damagePositionY,0,obj_damage);
	createdObjDamage.creator = id;
}