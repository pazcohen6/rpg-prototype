extends Sprite2D

func flash(color:Color = Color.WHITE, flash_duration: float = 1.4):
	var tween = create_tween()
	material.set_shader_parameter("ColorParameter", color)
	
	tween.tween_property(material, "shader_parameter/mixing_param", 1.0,flash_duration / 2)
	tween.tween_property(material, "shader_parameter/mixing_param", 0, flash_duration / 2)
