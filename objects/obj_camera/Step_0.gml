/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 55E74718
/// @DnDArgument : "code" "if (instance_exists(obj_player))$(13_10){$(13_10)	x += (obj_player.x - x) * 0.05;$(13_10)	y += (obj_player.y - y) * 0.05;$(13_10)}$(13_10)else gameOver();"
if (instance_exists(obj_player))
{
	x += (obj_player.x - x) * 0.05;
	y += (obj_player.y - y) * 0.05;
}
else gameOver();