if !debug_mode {
if instance_exists(oCamera) {
if global.character = 1 && global.LANG[4] = "blorui"
{
	draw_sprite(blorbui,0,oCamera.x - 1,oCamera.y)
}
if global.character = 2 && global.LANG[5] = "gameui"
{
	draw_sprite(gameui,0,oCamera.x - 1,oCamera.y)
}
if global.character = 3 && global.LANG[6] = "trixui"
{
	draw_sprite(trixui,0,oCamera.x - 1,oCamera.y)
}
if global.character = 4 && global.LANG[7] = "dougui"
{
	draw_sprite(dougui,0,oCamera.x - 1,oCamera.y)
}
if global.character = 1 && global.LANG[4] != "blorui"
{
	draw_sprite(global.LANG[4],0,oCamera.x - 1,oCamera.y)
}
if global.character = 2 && global.LANG[5] != "gameui"
{
	draw_sprite(global.LANG[5],0,oCamera.x - 1,oCamera.y)
}
if global.character = 3 && global.LANG[6] != "trixui"
{
	draw_sprite(global.LANG[6],0,oCamera.x - 1,oCamera.y)
}
if global.character = 4 && global.LANG[7] != "dougui"
{
	draw_sprite(global.LANG[7],0,oCamera.x - 1,oCamera.y)
}

draw_text_ext_color(oCamera.x - 100, oCamera.y - 155, global.deaths, 5, 300, c_black, c_black, c_black, c_black, 1)
}
}