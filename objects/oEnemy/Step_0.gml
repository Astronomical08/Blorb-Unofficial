visible = true;
if (place_meeting(x,y, global.player)) && global.hitting = 1 && alive = 1
{
	if alive = 1
	{
	audio_play_sound(Collect, 1,false)
	}
	alive = 0
	hspWalk = -0.5
	onGround = 0
	vsp = -8
	if alarm[0] = -1
	{
		alarm[0] = 100
	}
	sprite_index = emeny1hit
	if place_meeting(x,y+5,oWall)
	{
		vsp = -5
	}
}
//Work out where to move horizontally
hsp = hspWalk * dir;
 
//Work out where to move vertically
vsp = vsp + grv;
if onGround && alive = 1
{
	vsp = 0
}

//Are we on the ground?
onGround = place_meeting(x,y+1,oWall);
 
//Horizontal move & collide
var _hCol = move_and_collide(hsp, 0, oWall, abs(hsp))
 
//Walk down slope
//if (onGround) && (place_meeting(x,y + abs(hsp) + 1 ,oWall)) && (vsp >= 0) 
//{   
//   vsp += abs(hsp) + 1;
//}
if place_meeting(x + hsp,y,oEwall)
{
	dir = dir * -1
}

//Vertical move & collide
var _vCol = move_and_collide(0, vsp, oWall, abs(vsp)+1 , hsp, vsp, hsp, vsp)
//if (place_meeting(x,y, global.player))
//{
//	
//}