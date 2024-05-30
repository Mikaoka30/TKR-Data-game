extends Control

func _on_visibility_changed():

	# Get the TextureArray from the global script
	var texture_array = SocialMediaVars.social_array
	print(texture_array)

	# Create VBoxContainers for each TextureRect and add them to the HBoxContainer
	for texture in texture_array:
		# Create a VBoxContainer to hold the icon
		var vbox_container = $SocialMediaVbox
		var textureRect = TextureRect.new()
		textureRect.texture = texture.texture
		
		# Add the TextureRect to thSocialMediaVboxe VBoxContainer
		vbox_container.add_child(textureRect)
		# Set the size of the VBoxContainer to match the size of the TextureRect
