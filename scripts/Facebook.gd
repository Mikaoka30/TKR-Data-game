extends TextureRect

var isSelected = false
var icon = self # Reference the icon node

func _ready():
	set_process(true) # Ensure _process() is called

func _process(delta):
	if isSelected:
		icon.scale = Vector2(1.2, 1.2) # Increase size when selected
	else:
		icon.scale = Vector2(1, 1) # Reset to normal size when unselected

func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == MOUSE_BUTTON_LEFT:
			_on_TextureRect_pressed()

func _on_TextureRect_pressed():
	isSelected = not isSelected
