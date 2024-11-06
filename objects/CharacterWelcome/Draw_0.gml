if global.character = 1
{
	draw_sprite(blorb,0,oCameraCS.x - 0,oCameraCS.y + 100)
	draw_text(oCameraCS.x - 100, oCameraCS.y - 150, global.LANG[0])
}
if global.character = 2
{
	draw_sprite(game,0,oCameraCS.x - 0,oCameraCS.y + 100)
	draw_text(oCameraCS.x - 100, oCameraCS.y - 150, global.LANG[1])
}
if global.character = 3
{
	draw_sprite(trix,0,oCameraCS.x - 0,oCameraCS.y + 100)
	draw_text(oCameraCS.x - 100, oCameraCS.y - 150, global.LANG[2])
}
if global.character = 4
{
	draw_sprite(doug,0,oCameraCS.x - 0,oCameraCS.y + 100)
	draw_text(oCameraCS.x - 100, oCameraCS.y - 150, global.LANG[3])
}
