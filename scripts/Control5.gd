extends Control

# Display locations on map
func _on_visibility_changed():
	
	var selection_array = SocialMediaVars.social_array
	
	#var hBox =  $DisplayHBox
	#
	#for selected in selection_array:
		#var vContainer = VBoxContainer.new()
		#var textSelected = Label.new()
		#
		#textSelected.selected = selected.selected
		#
		#vContainer.add_child(textSelected)
		#hBox.add_child(vContainer)
		
	
	for texture in SocialMediaVars.social_array:
		var metadata = texture.get_meta("Name")
		
		match metadata:
			"Google":
				print("This is google")
				get_node("GLine").visible = true
				
			"Facebook":
				print("This is facebook")
				get_node("FLine").visible = true
				
			"Instagram":
				print("This is Instagram")
				get_node("ILine").visible = true
				
			"Snapchat":
				print("This is snapchat")
				get_node("SLine").visible = true
				
			"TikTok":
				print("This is TikTok")
				get_node("TLine").visible = true
#
#Display selected social media elements

