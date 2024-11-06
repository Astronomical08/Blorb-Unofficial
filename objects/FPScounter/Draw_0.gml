draw_set_font(DEBUG)
if instance_exists(oCamera)
draw_text_ext_color(oCamera.x - 335, oCamera.y + 180, "FPS: " + string(fps) + " TRUE FPS: " + string(fps_real), 5, 300, c_black, c_black, c_black, c_black, 1);
if instance_exists(oCameraCS)
draw_text_ext_color(oCameraCS.x - 335, oCameraCS.y + 180, "FPS: " + string(fps) + " TRUE FPS: " + string(fps_real), 5, 300, c_black, c_black, c_black, c_black, 1);
if instance_exists(OBSOLETE_CAMERA_FUCK)
draw_text_ext_color(OBSOLETE_CAMERA_FUCK.x - 335, OBSOLETE_CAMERA_FUCK.y + 180, "FPS: " + string(fps) + " TRUE FPS: " + string(fps_real), 5, 300, c_black, c_black, c_black, c_black, 1);
