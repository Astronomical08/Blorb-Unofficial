//STEP EVENT
 
//Get inputs
if !gamepad_is_connected(0) 
{
	var _keyRight = keyboard_check(global.RightKey);
	var _keyLeft = keyboard_check(global.LeftKey);
	var _keyJump = keyboard_check_pressed(global.JumpKey);
	var _keyEmote = keyboard_check_pressed(global.EmoteKey)
	var _keyPOUND = keyboard_check_pressed(global.SmokeKey)
	var _keyEscape = keyboard_check_pressed(vk_escape)
	var _keyAttack = keyboard_check_pressed(global.AttackKey)
//	var _keyRight = keyboard_check(vk_right);
//	var _keyLeft = keyboard_check(vk_left);
//	var _keyJump = keyboard_check_pressed(vk_up);
//	var _keyPOUND = keyboard_check_pressed(vk_down);
//	var _keyEmote = keyboard_check(ord("E"));
}
if gamepad_is_connected(0) 
{
var _keyRight = gamepad_button_check(0,gp_padr);
var _keyLeft = gamepad_button_check(0,gp_padl);
var _keyJump = gamepad_button_check(0,gp_face1);
var _keyEmote = gamepad_button_check(0,gp_face4);
}
if pounding
{
	if alarm[5] = -1
	{
		alarm[5] = 8
	}
}
if pounding = 0 && emoting = 0
{
	hspWalk = 10
}
if pounding = 1
{
	hspWalk = 5
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

if !onGround && pounding = 0 && _keyPOUND && emoting = 0
{
	pounding = 1
	vsp = -10
	grv = 1
}

if onGround && pounding = 1
{
	grv = 0.15
	vsp = -8
	pounding = 0
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

if (hsp = 0) && (onGround = 1) && emoting = 0 && canceling = 0
        {
            sprite_index = gameinyan_idle
        } 

if (hsp != 0) && (onGround = 1) && emoting = 0  && canceling = 0
        {
            sprite_index = Gameinyan_walkj
        }
		
if _keyLeft && emoting = 0
{
	image_xscale = -0.6
}
if _keyRight && emoting = 0
{
	image_xscale = 0.6
}
if emoting = 1
{
	image_xscale = -0.6
}
if (onGround != 1) && (vsp > 0) && emoting = 0  && canceling = 0 && pounding = 0
    {
            sprite_index = gameinyan_Fall
    }
if (onGround != 1) && (vsp < -3) && emoting = 0  && canceling = 0 && pounding = 0
{
            sprite_index = gameinyan_Jump105
}
if (onGround != 1) && (vsp > 8) && emoting = 0  && canceling = 0 && pounding = 1
    {
            sprite_index = gameinyan_pound
			canEmote = 1
    }
if (onGround != 1) && (vsp < 0) && emoting = 0  && canceling = 0 && pounding = 1
{
            sprite_index = gameinyan_pound_start
}


if place_meeting(x,y,DeathBarrior)
{
	x = Spawn.x
	y = Spawn.y
}

if _keyEmote && emoting = 0 && canEmote = 1 && canceling = 0
{
	canEmote = 0
	emoting = 1
	sprite_index = GameinyanEMOTE112
	alarm = 50
}

if emoting = 1
{
	grv = 0.15
	pounding = 0
	vsp = lastvsp
	vsp = 0
	hspWalk = 0
}

if _keyJump && emoting = 1
{
alarm[0] = 0.01
alarm[2] = 1
alarm[1] = 80 
}

if onGround
{
	canceling = 0
}