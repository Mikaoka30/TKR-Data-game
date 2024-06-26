extends TextureRect

#Function to display elements of the array

var is_selected = false

func _ready():
	set_process_input(true) # Enable input processing
	

func _gui_input(event):
	if event.is_pressed() and event.button_index == MOUSE_BUTTON_LEFT:
		toggle_selected()

func toggle_selected():
	is_selected = not is_selected
	if is_selected:
		self.scale = Vector2(1.05, 1.05) # Increase size when selected 
		SocialMediaVars.taonga_array.append(self)
		print("Taonga added")
		$"../Continue2".disabled = false
	else:
		var index = SocialMediaVars.taonga_array.find(self)
		SocialMediaVars.taonga_array.remove_at(index)
		print("Taonga removed")
		self.scale = Vector2(1, 1) # Reset to normal size when unselected
