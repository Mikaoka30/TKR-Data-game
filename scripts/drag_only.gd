extends TextureRect

func _get_drag_data(at_position):
	
	var preview_texture = TextureRect.new()
	#preview of the icon when holding the icon
	preview_texture.texture = texture
	preview_texture.expand_mode = 1
	preview_texture.size = Vector2(100,50)

	set_drag_preview(preview_texture)
	
	return texture
