extends Control

# Display locations on map
func _on_visibility_changed():
	
	#var selection_array = SocialMediaVars.social_array
	
	for texture in SocialMediaVars.social_array:
		var metadata = texture.get_meta("Name")
		
		match metadata:
			"Google":
				print("This is google")
				get_node("GLine").visible = false
				get_node("gbtn").visible = true
				
			"Facebook":
				print("This is facebook")
				get_node("FLine").visible = false
				get_node("fbtn").visible = true
				
			"Instagram":
				print("This is Instagram")
				get_node("ILine").visible = false
				get_node("ibtn").visible = true
				
			"Snapchat":
				print("This is snapchat")
				get_node("SLine").visible = false
				get_node("sbtn").visible = true
				
			"TikTok":
				print("This is TikTok")
				get_node("TLine").visible = false
				get_node("tbtn").visible = true


