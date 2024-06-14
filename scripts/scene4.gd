extends Control

func _on_visibility_changed():

	# Get the TextureArray from the global script

	var social_media_hbox = $SocialMediaHbox
	var dropArea = preload("res://DropArea.tscn")
	#Add social media to top hbox and create a vbox for each one
	#Each vbox will have "dropable" areas equal to the amount of toanga
	SocialMediaVars.taonga_array.append(1)
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
		
		#Loop through taonga array and add "droppable" area textureRects
		for taonga in SocialMediaVars.taonga_array:
			var instance = dropArea.instantiate()
			vbox_container.add_child(instance)
		
		# Set the size of the VBoxContainer to match the size of the TextureRect
		social_media_hbox.add_child(vbox_container)
	
	var taonga_hbox = $ToangaHbox
	
	#Add toanga to bottom hbox
	#for texture in SocialMediaVars.taonga_array:
		##Add textures to horizontal box at the bottom of screen
		#var textureRect = TextureRect.new()
		#textureRect.texture = texture.texture
		#textureRect.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
		#textureRect.custom_minimum_size = Vector2(20,20)
		#
		#taonga_hbox.add_child(textureRect)
