if(event_data[? "event_type"] == "sprite event")
{
	switch(event_data[? "message"]) {
		case "Step" :
			audio_play_sound(step,1,false)
		break;
	}
}