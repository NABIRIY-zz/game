/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 52CAC481
/// @DnDArgument : "code" "event_inherited();$(13_10)depth = -y-4$(13_10)var move_right = (keyboard_check(vk_right) || keyboard_check(ord("D")));$(13_10)var move_left = (keyboard_check(vk_left) || keyboard_check(ord("A")));$(13_10)var move_up = (keyboard_check(vk_up) || keyboard_check(ord("W")));$(13_10)var move_down = (keyboard_check(vk_down) || keyboard_check(ord("S")));$(13_10)var noMove = !move_down and !move_up and !move_left and !move_right;$(13_10)var centrPlayerX = x+5$(13_10)var centrPlayerY = y+8;$(13_10)var damagePositionX = centrPlayerX;$(13_10)var damagePositionY = centrPlayerY;$(13_10)$(13_10)if(move_right)$(13_10){$(13_10)	phy_position_x += speed_player;$(13_10)	damagePositionX = centrPlayerX+damageDistance;$(13_10)	damagePositionY = centrPlayerY;$(13_10)}$(13_10)if(move_left)$(13_10){$(13_10)	phy_position_x -= speed_player;$(13_10)	damagePositionX = centrPlayerX-damageDistance;$(13_10)	damagePositionY = centrPlayerY;$(13_10)}$(13_10)if(move_up)$(13_10){$(13_10)	phy_position_y -= speed_player;$(13_10)	damagePositionX = centrPlayerX;$(13_10)	damagePositionY = centrPlayerY-damageDistance;$(13_10)}$(13_10)if(move_down)$(13_10){$(13_10)	phy_position_y += speed_player;$(13_10)	damagePositionX = centrPlayerX;$(13_10)	damagePositionY = centrPlayerY+damageDistance;$(13_10)}$(13_10)if(noMove)$(13_10){$(13_10)	alarm[0] = 1;$(13_10)}$(13_10)if(keyboard_check_pressed(ord("E")))$(13_10){$(13_10)	var createdObjDamage = instance_create_depth(damagePositionX,damagePositionY,0,obj_damage);$(13_10)	createdObjDamage.creator = id;$(13_10)}"
event_inherited();
depth = -y-4
var move_right = (keyboard_check(vk_right) || keyboard_check(ord("D")));
var move_left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
var move_up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
var move_down = (keyboard_check(vk_down) || keyboard_check(ord("S")));
var noMove = !move_down and !move_up and !move_left and !move_right;
var centrPlayerX = x+5
var centrPlayerY = y+8;
var damagePositionX = centrPlayerX;
var damagePositionY = centrPlayerY;

if(move_right)
{
	phy_position_x += speed_player;
	damagePositionX = centrPlayerX+damageDistance;
	damagePositionY = centrPlayerY;
}
if(move_left)
{
	phy_position_x -= speed_player;
	damagePositionX = centrPlayerX-damageDistance;
	damagePositionY = centrPlayerY;
}
if(move_up)
{
	phy_position_y -= speed_player;
	damagePositionX = centrPlayerX;
	damagePositionY = centrPlayerY-damageDistance;
}
if(move_down)
{
	phy_position_y += speed_player;
	damagePositionX = centrPlayerX;
	damagePositionY = centrPlayerY+damageDistance;
}
if(noMove)
{
	alarm[0] = 1;
}
if(keyboard_check_pressed(ord("E")))
{
	var createdObjDamage = instance_create_depth(damagePositionX,damagePositionY,0,obj_damage);
	createdObjDamage.creator = id;
}