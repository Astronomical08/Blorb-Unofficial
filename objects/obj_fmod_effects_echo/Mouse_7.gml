
var _id = id
with(obj_fmod_effects)
{
	var _bypass = fmod_dsp_get_bypass(dsp_echo)
	fmod_dsp_set_bypass(dsp_echo,!_bypass)
	_id.text = _id.effect_name + (_bypass?": On":": Off")
}
