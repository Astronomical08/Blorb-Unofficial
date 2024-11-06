var _camX = camera_get_view_x( view_camera[0]);
var _camY = camera_get_view_y( view_camera[0]);
var _camW = camera_get_view_width( view_camera[0]); 
var _camH = camera_get_view_height( view_camera[0]);

draw_healthbar(_camX + 70 , _camY +25, _camX + 130 , _camY +40, TimeToComplete, c_black, c_purple, c_purple, 0, true, true)
