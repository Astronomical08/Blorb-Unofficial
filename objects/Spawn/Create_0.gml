if global.character = 1
{
instance_create_layer(x,y,"instances", oPlayer)
global.player = oPlayer
}
if global.character = 2
{
instance_create_layer(x,y,"instances", oGameinyan)
global.player = oGameinyan
}
if global.character = 3
{
instance_create_layer(x,y,"instances", oTrixter)
global.player = oTrixter
}
if global.character = 4
{
instance_create_layer(x,y,"instances", oDOUG)
global.player = oDOUG
}
if !debug_mode {
image_alpha = 0
}
if debug_mode {
image_alpha = 1
}