//STEP EVENT
 window_set_caption("Blorb")
//Get inputs
if !gamepad_is_connected(0)
{
	var _keyRight = keyboard_check(global.RightKey);
	var _keyLeft = keyboard_check(global.LeftKey);
	var _keyJump = keyboard_check_pressed(global.JumpKey);
	var _keyEmote = keyboard_check_pressed(global.EmoteKey)
	var _keySmoke = keyboard_check_pressed(global.SmokeKey)
	var _keyEscape = keyboard_check_pressed(vk_escape)
	var _keyAttack = keyboard_check_pressed(global.AttackKey)
//	var _keyRight = keyboard_check(vk_right);
//	var _keyLeft = keyboard_check(vk_left);
//	var _keyJump = keyboard_check_pressed(vk_up);
	//var _keyEmote = keyboard_check(ord("E"));
//	var _keyAttack = keyboard_check(ord("X"));
	//var _keyEscape = keyboard_check(vk_escape)
}
if gamepad_is_connected(0) 
{
var _keyRight = gamepad_button_check(0,gp_padr);
var _keyLeft = gamepad_button_check(0,gp_padl);
var _keyJump = gamepad_button_check(0,gp_face1);
var _keyEmote = gamepad_button_check(0,gp_face4);
}

 
slopeOn = keyboard_check(vk_control);
 
//Work out where to move horizontally
hsp = (_keyRight - _keyLeft) * hspWalk;
 
//Work out where to move vertically
vsp = vsp + grv;
 
//Work out if we should jump
if (canJump-- > 0) && (_keyJump)
{
		audio_play_sound(JumpBLORB, 10, false, 1)
    vsp = vspJump;
    canJump = 0;
}
 
//Are we on the ground?
onGround = place_meeting(x,y+1,oWall);
 
//Horizontal move & collide
var _hCol = move_and_collide(hsp, 0, oWall, abs(hsp))
 
//Walk down slope
if (onGround) && (place_meeting(x,y + abs(hsp) + 1 ,oWall)) && (vsp >= 0) 
{   
    vsp += abs(hsp) + 1;
}
 
//Vertical move & collide
var _vCol = move_and_collide(0, vsp, oWall, abs(vsp)+1 , hsp, vsp, hsp, vsp)
if (array_length(_vCol)  > 0) && emoting = 0
{
    if (vsp > 0) canJump = 10;
    vsp = 0;
}

//animation code

if (hsp = 0) && (onGround = 1) && emoting = 0 && canceling = 0 && boosting = 0 && global.hitting = 0
        {
            sprite_index = DOUGLAS
        } 

if (hsp != 0) && (onGround = 1) && emoting = 0  && canceling = 0 && boosting = 0 && global.hitting = 0
        {
            sprite_index = DOUGLASrun
        }
		
if _keyLeft
{
	image_xscale = -0.6
}
if _keyRight
{
	image_xscale = 0.6
}

if (onGround != 1) && (vsp > 0) && emoting = 0  && canceling = 0 && boosting = 0 && global.hitting = 0
    {
            sprite_index = DOUGLASairbound
    }
if (onGround != 1) && (vsp < -3) && emoting = 0  && canceling = 0 && boosting = 0 && global.hitting = 0
{
            sprite_index = DOUGLASfally
}

if place_meeting(x,y,DeathBarrior)
{
	global.deaths = global.deaths + 1
	x = Spawn.x
	y = Spawn.y
}
if onGround && emoting != 1
{
	canceling = 0
	canEmote = 1
	boosting = 0
}

if _keyEmote && emoting = 0 && canEmote = 1 && canceling = 0 
{
	canEmote = 0
	emoting = 1
	sprite_index = Doug_Ready
	alarm[0] = 15
	hspWalk = 4
}
if onGround && emoting = 1
{
	vsp = -4
}
if _keyJump
{
	if emoting = 1 or boosting = 1
	{
	alarm[0] = 0.01
	alarm[2] = 1
	alarm[1] = 30
	}
}
if emoting = 1 or boosting = 1
	{
	hspWalk = 4
	}
if onGround
{
	hspWalk = 10
}
if boosting = 1 or canceling = 1
{
	if alarm[4] = -1
	{
		alarm[4] = 8
	}
}

if _keyAttack && canceling = 0 
{
	sprite_index = DOUGLAShit
	image_index = 0
	global.hitting = 1
}

if global.hitting = 1
{
	if alarm[5] = -1
	{
		alarm[5] = 20
	}
}
if canceling = 1 && _keySmoke
{
	vsp = 8
}
if canceling = 1
{
	global.hitting = 1
}
if _keyEscape
{
	room_goto(CSroom)
}