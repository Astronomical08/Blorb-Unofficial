if global.Menu = 0
{
	follow = Options
}
if global.Menu = 1
{
	follow = Start
}
if global.Menu = 2
{
	follow = Exit
}
if (follow != noone)
{
    xTo = follow.x;
    yTo = follow.y;
}

x += (xTo - x)/3;
//y += (yTo - y)/9;

if !gamepad_is_connected(0)
{
	var _keyRight = keyboard_check_pressed(vk_right);
	var _keyLeft = keyboard_check_pressed(vk_left);
	var _Confirm = keyboard_check_pressed(vk_enter)
}
if gamepad_is_connected(0)
{
	var _Confirm = gamepad_button_check(0,gp_face1);
	var _keyRight = (gamepad_axis_value(0,gp_axislh) > 0);
	var _keyLeft = (gamepad_axis_value(0,gp_axislh) < 0);  
}

if _keyRight && global.Menu < 2 && chosen = 0
{
	global.Menu = global.Menu + 1
}
if _keyLeft && global.Menu > 0 && chosen = 0
{
	global.Menu = global.Menu - 1
}

// ^^^CHANGE THE DIVSION TO CHANGE THE SENSITIVITY OF CAMERA

//x = clamp(x,camWidth,room_width-camWidth)

{
    camera_set_view_pos(view_camera[0],x-(camWidth*0.5),y-(camHieght*0.5));
}
// Ashley cided the camera part poorly so it doedsnt work :(