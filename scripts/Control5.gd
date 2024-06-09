extends Control


func _on_visibility_changed():
	for texture in SocialMediaVars.social_array:
		var metadata = texture.get_meta("Name")
		
