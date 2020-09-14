/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 52CAC481
/// @DnDArgument : "code" "event_inherited();$(13_10)depth = -y-4$(13_10)var move_right = (keyboard_check(vk_right) || keyboard_check(ord("D")));$(13_10)var move_left = (keyboard_check(vk_left) || keyboard_check(ord("A")));$(13_10)var move_up = (keyboard_check(vk_up) || keyboard_check(ord("W")));$(13_10)var move_down = (keyboard_check(vk_down) || keyboard_check(ord("S")));$(13_10)$(13_10)if(move_right)$(13_10){$(13_10)	phy_position_x += speed_player;$(13_10)}$(13_10)if(move_left)$(13_10){$(13_10)	phy_position_x -= speed_player;$(13_10)}$(13_10)if(move_up)$(13_10){$(13_10)	phy_position_y -= speed_player;$(13_10)}$(13_10)if(move_down)$(13_10){$(13_10)	phy_position_y += speed_player;$(13_10)}"
event_inherited();
depth = -y-4
var move_right = (keyboard_check(vk_right) || keyboard_check(ord("D")));
var move_left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
var move_up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
var move_down = (keyboard_check(vk_down) || keyboard_check(ord("S")));

if(move_right)
{
	phy_position_x += speed_player;
}
if(move_left)
{
	phy_position_x -= speed_player;
}
if(move_up)
{
	phy_position_y -= speed_player;
}
if(move_down)
{
	phy_position_y += speed_player;
}