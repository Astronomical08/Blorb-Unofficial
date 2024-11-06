switch ( global.character ) {
case 1 :
	follow = BlorbCS
break;
case 2 :
	follow = GameCS
break;
case 3 :
	follow = TrixCS
break;
case 4 :
	follow = DougCS
break;
}
if (follow != noone)
{
    xTo = follow.x;
    yTo = follow.y;
}

x += (xTo - x)/3;
// ^^^CHANGE THE DIVSION TO CHANGE THE SENSITIVITY OF CAMERA

//x = clamp(x,camWidth,room_width-camWidth)

{
    camera_set_view_pos(view_camera[0],x-(camWidth*0.5),y-(camHieght*0.5));
}