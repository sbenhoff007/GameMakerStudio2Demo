/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 602F3014
/// @DnDArgument : "code" "vsp += grv;$(13_10)$(13_10)//Horizontal Collision$(13_10)if (place_meeting(x+hsp,y,obj_wall))$(13_10){$(13_10)	while(!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)	{$(13_10)		x = x + sign(hsp);$(13_10)	}$(13_10)	hsp = -hsp;$(13_10)}$(13_10)$(13_10)x = x + hsp;$(13_10)$(13_10)//Vertical Collision$(13_10)if (place_meeting(x,y+vsp,obj_wall))$(13_10){$(13_10)	while(!place_meeting(x,y+sign(vsp),obj_wall))$(13_10)	{$(13_10)		y = y + sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)$(13_10)y = y + vsp;$(13_10)$(13_10)//Face Left Animation$(13_10)if (hsp != 0) image_xscale = sign(hsp);"
vsp += grv;

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall))
{
	while(!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
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

//Face Left Animation
if (hsp != 0) image_xscale = sign(hsp);