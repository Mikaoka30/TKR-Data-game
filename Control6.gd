extends Control


# Called when the node enters the scene tree for the first time.
#func _ready():
#var button = Button.new()
#button.text = "Open Website"
#button.pressed.connect(_on_externalbtn_pressed)

#Test accessing external websites
func _on_externalbtn_pressed():
	OS.shell_open("https://www.google.com/webhp?hl=en&sa=X&ved=0ahUKEwizgpiJ59mGAxXx3jgGHYgEBXgQPAgJ")
