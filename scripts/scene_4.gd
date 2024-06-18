extends Control

func _on_visibility_changed():

	# Get the TextureArray from the global script
	var social_media_hbox = $SocialMediaHbox
	var dropArea = preload("res://DropArea.tscn")
	
	for social_media in social_media_hbox.get_children():
		social_media_hbox.remove_child(social_media)
		
		
	#Add social media to top hbox and create a vbox for each one
	#Each vbox will have "dropable" areas equal to the amount of toanga
	for texture in SocialMediaVars.social_array:
		# Create a VBoxContainer to hold the icon
		var vbox_container = VBoxContainer.new()
		var textureRect = TextureRect.new()
		textureRect.texture = texture.texture
		textureRect.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
		textureRect.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
		textureRect.custom_minimum_size = Vector2(30,30)
		
		# Add the TextureRect to thSocialMediaVboxe VBoxContainer
		vbox_container.add_child(textureRect)
		vbox_container.add_theme_constant_override("separation", 2)
		
		#Loop through taonga array and add "droppable" area textureRects
		for n in 7:
			var instance = dropArea.instantiate()
			vbox_container.add_child(instance)
		
		# Set the size of the VBoxContainer to match the size of the TextureRect
		social_media_hbox.add_child(vbox_container)
