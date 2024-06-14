extends TextureRect



#Function to display elements of the array

var is_selected = false

func _ready():
	set_process_input(true) # Enable input processing
	
	#display_global_array()
	
#@onready var label = $Control5/DisplayArray
#
#func display_global_array():
	#var elements = SocialMediaVars
	#
	#var text = ""
	#for element in elements:
		#text += element + "\n"		
		#label.text = text

func _gui_input(event):
	if event.is_pressed() and event.button_index == MOUSE_BUTTON_LEFT:
		toggle_selected()

func toggle_selected():
	is_selected = not is_selected
	if is_selected:
		self.scale = Vector2(1.2, 1.2) # Increase size when selected
		SocialMediaVars.social_array.append(self)
		print("Logo added")
	else:
		var index = SocialMediaVars.social_array.find(self)
		SocialMediaVars.social_array.remove_at(index)
		print("Logo removed")
		self.scale = Vector2(1, 1) # Reset to normal size when unselected
