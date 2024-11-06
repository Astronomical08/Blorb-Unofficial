global.stun = 0	
if room = lobby {
room_goto(level1)
}
if room = level1 {
room_goto(level2)
}
if room = level2 {
room_goto(level3)
}
if room = level3 {
room_goto(level4)
}
if room = level4 {
room_goto(level5)
}
