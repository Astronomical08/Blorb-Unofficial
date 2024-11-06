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
//	var _keyRight = keyboard_check(vk_right);
//	var _keyLeft = keyboard_check(vk_left);
//	var _keyJump = keyboard_check_pressed(vk_up);
//	var _keyEmote = keyboard_check(ord("E"));
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
if (canJump-- > 0 && _keyJump)
{
    audio_play_sound(JumpBLORB, 10, false, 1)
    vsp = vspJump
    canJump = 0
}
onGround = place_meeting(x, (y + 1), oWall)
var _hCol = move_and_collide(hsp, 0, oWall, abs(hsp))
if (onGround && place_meeting(x, ((y + abs(hsp)) + 1), oWall) && vsp >= 0)
    vsp += (abs(hsp) + 1)
var _vCol = move_and_collide(0, vsp, oWall, (abs(vsp) + 1), hsp, vsp, hsp, vsp)
if (array_length(_vCol) > 0 && emoting == 0)
{
    if (vsp > 0)
        canJump = 10
    vsp = 0
}
if (hsp == 0 && onGround == 1 && emoting == 0 && canceling == 0 && global.hitting == 0)
    sprite_index = trixidle
if (hsp != 0 && onGround == 1 && emoting == 0 && canceling == 0 && global.hitting == 0)
    sprite_index = trixwalk_ASHINGO
if _keyLeft
{
    image_xscale = -0.6
}
if _keyRight
{
    image_xscale = 0.6
}
if (onGround != 1 && vsp > 0 && emoting == 0 && canceling == 0 && global.hitting == 0)
    sprite_index = trixairbound
if (onGround != 1 && vsp < -3 && emoting == 0 && canceling == 0 && global.hitting == 0)
    sprite_index = trixfally
if place_meeting(x, y, DeathBarrior)
{
    x = Spawn.x
    y = Spawn.y
    global.deaths = (global.deaths + 1)
    if (global.deaths == 10)
        game_end()
}
if (_keyEmote && emoting == 0 && canEmote == 1 && canceling == 0 && global.hitting == 0 && !onGround)
{
    canEmote = 0
    emoting = 1
    sprite_index = trixdance
    alarm = 50
}
if (emoting == 1)
{
    vsp = lastvsp
    vsp = 0
    hspWalk = 0
}
if (emoting == 1)
{
    alarm[0] = 0.01
    alarm[2] = 1
    alarm[1] = 30
}
if onGround
{
    canceling = 0
	grv = 0.2
}
if place_meeting(x, y, DeathBarrior)
{
    x = Spawn.x
    y = Spawn.y
    global.deaths = (global.deaths + 1)
    if (global.deaths == 10)
        url_open("https://www.wikihow.com/Become-a-Master-Gamer")
    if (global.deaths == 20)
        url_open("https://www.amazon.com/Ninja-Good-Ultimate-Guide-Gaming/dp/1984826751/ref=sr_1_1?crid=1AYSU4HYSDQLU&dib=eyJ2IjoiMSJ9.lBxZbMmf1X27PtHWz6zgU15MZYQUiJX5RCG89dktUUCT9UuNz8MobOaguRRchWELHj1pp7gFrD98YsHaQjtpuwmFD3WepPlfEc91oyZk7PBTNnD9Tu1hK8FV_ICCiJwR32VrLex6p5tBmH64ATCdaj8IdOPCG4nnzwIYKTL2ZsXD-peVTZV4fStgcMce3iOKqWyVAn3n8i01tDFJRuLFF7cGj8fPnYBNiVHQZ8DJDXA.zXAg8AqlJSVVtqxM93jMWQj96o0QshfQ7oOBKYrpYts&dib_tag=se&keywords=gamer+guide&qid=1712182118&sprefix=gamer+guide%2Caps%2C231&sr=8-1")
}
if canceling = 0
{
	sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
}
if canceling = 1
{
	sprite_set_speed(sprite_index, vsp + 15, spritespeed_framespersecond);
}
