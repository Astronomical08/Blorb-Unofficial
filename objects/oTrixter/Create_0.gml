//CREATE EVENT

grv = 0.2; //gravity
hsp = 0; //current horizontal speed
vsp = 0; //current vertical speed
hspWalk = 8; //walk speed
vspJump = -8
canJump = 0; //above zero while we are able to jump
onGround = false; //are we on the ground?

image_yscale = 0.6
image_xscale = 0.6
emoting = 0
canEmote = 1
lastvsp = 0
canceling = 0
boosting = 0
canBoost = 0

if instance_exists(NPLUS_inspired_Timer)
{
	NPLUS_inspired_Timer.TimeToComplete = 100
}