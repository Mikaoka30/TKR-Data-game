extends TextureRect

func _get_drag_data(at_position):
	
	var preview_texture = TextureRect.new()
	#preview of the icon when holding the icon
	preview_texture.texture = texture
	preview_texture.expand_mode = 1
	preview_texture.position = Vector2(at_position.x, at_position.y)


	preview_texture.size = Vector2(100,50)

	var preview = Control.new()
	preview.add_child(preview_texture)
	preview.position = Vector2(at_position.x, at_position.y)
	set_drag_preview(preview)
	
	return texture
