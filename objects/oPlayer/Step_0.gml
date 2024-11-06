//STEP EVENT
 
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
	var _keySprint = keyboard_check(global.SprintKey)
//	var _keyRight = keyboard_check(vk_right);
//	var _keyLeft = keyboard_check(vk_left);
//	var _keyJump = keyboard_check_pressed(ord("Z"));
//	var _keyEmote = keyboard_check(ord("C"))
//	var _keySmoke = keyboard_check_pressed(ord("A"))
//	var _keyEscape = keyboard_check_pressed(vk_escape)
//	var _keyAttack = keyboard_check_pressed(ord("X"))
}
if gamepad_is_connected(0) 
{
var _keyRight = gamepad_button_check(0,gp_padr);
var _keyLeft = gamepad_button_check(0,gp_padl);
var _keyJump = gamepad_button_check(0,gp_face1);
var _keyEmote = gamepad_button_check(0,gp_face4);
var _keySmoke = gamepad_button_check(0,gp_face2);
}

 
slopeOn = keyboard_check(vk_control);
 
//Work out where to move horizontally
if global.stun = 0 or global.stun = 3
{
hsp = (_keyRight - _keyLeft) * hspWalk;
}
if global.stun = 1 or global.stun = 2 or global.stun = 4
{
hsp = round(image_xscale) * hspWalk;
}
 
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

if global.stun = 1 or global.stun = 2
{
	sprite_index = Blorb_hit
}
if (hsp = 0) && (onGround = 1) && emoting = 0 && canceling = 0 && smoking = 0 && global.hitting = 0 && (global.stun = 0 or global.stun = 3)
        {
            sprite_index = bloridle1
        } 

if (hsp != 0) && (onGround = 1) && emoting = 0  && canceling = 0 && global.hitting = 0 && (global.stun = 0 or global.stun = 3)
        {
			if sprinting = 0
			{
            sprite_index = bloright
			}
			else
			{
			sprite_index = blorbfast
			}
			smoking = 0
        }
		
if _keyLeft && (global.stun = 0 or global.stun = 3)
{
	image_xscale = -0.6
}
if _keyRight && (global.stun = 0 or global.stun = 3)
{
	image_xscale = 0.6
}

if (onGround != 1) && (vsp > 0) && emoting = 0  && canceling = 0 && global.hitting = 0 && (global.stun = 0 or global.stun = 3)
    {
			if sprinting = 0
			{
            sprite_index = blorairbound
			}
			else
			{
			sprite_index = BlorbFASTFALL
			}
			smoking = 0
    }
if (onGround != 1) && (vsp < -3) && emoting = 0  && canceling = 0 && global.hitting = 0 && (global.stun = 0 or global.stun = 3)
{
			if sprinting = 0
			{
            sprite_index = blorfally
			}
			else
			{
			sprite_index = BlorbFASTJUMP
			}
			smoking = 0
}

if place_meeting(x,y,DeathBarrior)
{
	x = Spawn.x
	y = Spawn.y
	global.deaths = global.deaths + 1
	if global.deaths = 10
	{
		url_open("https://www.wikihow.com/Become-a-Master-Gamer")
	}
	if global.deaths = 20
	{
		url_open("https://www.amazon.com/Ninja-Good-Ultimate-Guide-Gaming/dp/1984826751/ref=sr_1_1?crid=1AYSU4HYSDQLU&dib=eyJ2IjoiMSJ9.lBxZbMmf1X27PtHWz6zgU15MZYQUiJX5RCG89dktUUCT9UuNz8MobOaguRRchWELHj1pp7gFrD98YsHaQjtpuwmFD3WepPlfEc91oyZk7PBTNnD9Tu1hK8FV_ICCiJwR32VrLex6p5tBmH64ATCdaj8IdOPCG4nnzwIYKTL2ZsXD-peVTZV4fStgcMce3iOKqWyVAn3n8i01tDFJRuLFF7cGj8fPnYBNiVHQZ8DJDXA.zXAg8AqlJSVVtqxM93jMWQj96o0QshfQ7oOBKYrpYts&dib_tag=se&keywords=gamer+guide&qid=1712182118&sprefix=gamer+guide%2Caps%2C231&sr=8-1")
	}
}

if _keyEmote && emoting = 0 && canEmote = 1 && canceling = 0 && (global.stun = 0 or global.stun = 3)
{
	canEmote = 0
	emoting = 1
	global.hitting = 0
	sprite_index = bloremote
	alarm = 50
}

if emoting = 1
{
	vsp = lastvsp
	vsp = 0
	hspWalk = 0
}

if _keyJump && emoting = 1
{
	global.hitting = 0
alarm[0] = 0.01
alarm[2] = 1
alarm[1] = 30
}

if onGround
{
	canceling = 0
}

if _keySmoke
{
	smoking = 1
}

if _keyEscape
{
	room_goto(CSroom)
}

if smoking = 1 && (global.stun = 0 or global.stun = 3)
{
	sprite_index = blorbcigarette
	if alarm[4] = -1
	{
		alarm[4] = 140
	}
} 


if _keyAttack && global.hitting = 0 && emoting = 0  && canceling = 0
{
	global.hitting = 1
	sprite_index = blorpunch
	image_index = 0
}

if global.hitting = 1 && (global.stun = 0 or global.stun = 3)
{
	if alarm[5] = -1
	{
		alarm[5] = 20
	}
} 

if place_meeting(x,y,oEnemy) && global.hitting = 0 && global.stun = 0 && oEnemy.alive = 1
{
	global.stun = 1
	audio_play_sound(Hit, 1,false)
}
switch ( global.stun ) {
case 1 :
    hspWalk = -6
    hsp = 0
    vsp = -3;

    if alarm[3] = -1
    {
        alarm[3] = 10
    }
    break;
case 2 :
    hspWalk = -4
    hsp = 0

    if alarm[6] = -1
    {
        alarm[6] = 60
    }
    break;
case 3 :
     image_alpha = 0.7
    if alarm[7] = -1
    {
        alarm[7] = 120
    }
    break;
case 4 :
sprite_index = Blorb_Door
hspWalk = 0
canJump = 0
x = oDoor.x
if vsp < 0
{
	vsp = 0
}
}
if global.stun = 0 && emoting = 0 && canceling = 0 && global.hitting = 0 && sprinting = 0
{
	hspWalk = 8
}
if global.stun = 0 && sprinting = 1
{
	hspWalk = 12
}
if onGround && global.stun = 2
{
	hspWalk = 8
	global.stun = 3
}

if _keySprint && emoting = 0 && canceling = 0 && global.hitting = 0
{
	sprinting = 1
}
else
{
	sprinting = 0
}

if sprinting = 0
{
	vspJump = -6
}
else
{
	vspJump = -8
}
