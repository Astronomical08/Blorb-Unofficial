switch ( global.character ) {
case 1 :
	follow = oPlayer
break;
case 2 :
	follow = oGameinyan
break;
case 3 :
	follow = oTrixter
break;
case 4 :
	follow = oDOUG
break;
}

if (follow != noone)
{
    xTo = follow.x;
    yTo = follow.y;
}

x += (xTo - x)/3;
y += (yTo - y)/9;
// ^^^CHANGE THE DIVSION TO CHANGE THE SENSITIVITY OF CAMERA

//x = clamp(x,camWidth,room_width-camWidth)

{
    camera_set_view_pos(view_camera[0],x-(camWidth*0.5),y-(camHieght*0.5));
}