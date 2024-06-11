extends Control

# Display locations on map
func _on_visibility_changed():
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
