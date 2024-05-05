extends TextureRect

var is_selected = false

func _ready():
	set_process_input(true) # Enable input processing

func _gui_input(event):
	if event.is_pressed() and event.button_index == MOUSE_BUTTON_LEFT:
		toggle_selected()

func toggle_selected():
	is_selected = not is_selected
	if is_selected:
		self.scale = Vector2(1.2, 1.2) # Increase size when selected
		SocialMediaVars.add_texture(self)
	else:
		remove_texture_from_global(self)
		self.scale = Vector2(1, 1) # Reset to normal size when unselected

# Function to remove a texture from the global array
func remove_texture_from_global(texture_to_remove):
	SocialMediaVars.remove_texture(texture_to_remove)