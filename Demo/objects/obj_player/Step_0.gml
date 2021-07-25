/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 726CEE92
/// @DnDArgument : "code" "//Player Movement$(13_10)key_left = keyboard_check(vk_left);$(13_10)key_right = keyboard_check(vk_right);$(13_10)key_jump = keyboard_check_pressed(vk_up);$(13_10)$(13_10)var move = key_right - key_left;$(13_10)hsp = move * walksp;$(13_10)vsp = vsp + grv;$(13_10)$(13_10)//Horizontal Collision$(13_10)if (place_meeting(x+hsp,y,obj_wall))$(13_10){$(13_10)	while(!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)	{$(13_10)		x = x + sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)$(13_10)x = x + hsp;$(13_10)$(13_10)//Vertical Collision$(13_10)if (place_meeting(x,y+vsp,obj_wall))$(13_10){$(13_10)	while(!place_meeting(x,y+sign(vsp),obj_wall))$(13_10)	{$(13_10)		y = y + sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)$(13_10)y = y + vsp;$(13_10)$(13_10)//Jump Check$(13_10)if (place_meeting(x,y+1,obj_wall) && key_jump)$(13_10){$(13_10)	vsp = -14;$(13_10)}$(13_10)$(13_10)//Animation$(13_10)if (!place_meeting(x,y+1,obj_wall))$(13_10){$(13_10)	sprite_index = sp_player_jump;$(13_10)	image_speed = 0;$(13_10)	$(13_10)	if (sign(vsp) > 0) image_index = 1; else image_index = 0;$(13_10)}$(13_10)else$(13_10){$(13_10)	image_speed = 1;$(13_10)	if (hsp == 0)$(13_10)	{$(13_10)		sprite_index = sp_player_idle;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		sprite_index = sp_player_walk;	$(13_10)	}$(13_10)}$(13_10)$(13_10)//Face Left Animation$(13_10)if (hsp != 0) image_xscale = sign(hsp);$(13_10)$(13_10)"
//Player Movement
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);

var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall))
{
	while(!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
	while(!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

//Jump Check
if (place_meeting(x,y+1,obj_wall) && key_jump)
{
	vsp = -14;
}

//Animation
if (!place_meeting(x,y+1,obj_wall))
{
	sprite_index = sp_player_jump;
	image_speed = 0;
	
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sp_player_idle;
	}
	else
	{
		sprite_index = sp_player_walk;	
	}
}

//Face Left Animation
if (hsp != 0) image_xscale = sign(hsp);