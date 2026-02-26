extends Sprite2D

func flash(color:Color = Color.WHITE, flash_duration: float = 1.4):
	var tween = create_tween()
	material.set_shader_parameter("ColorParameter", color)
	
	tween.tween_property(material, "shader_parameter/mixing_param", 1.0,flash_duration / 2)
	tween.tween_property(material, "shader_parameter/mixing_param", 0, flash_duration / 2)

func stealth(duration: float = 0.7):
	var tween = create_tween()
	tween.tween_property(material,"shader_parameter/alphaParameter",0.25,duration)
	await  tween.finished

func unstealth(duration: float = 0.4):
	var tween = create_tween()
	tween.tween_property(material,"shader_parameter/alphaParameter",1,duration)
	await  tween.finished
