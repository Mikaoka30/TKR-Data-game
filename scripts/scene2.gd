extends Node2D

func _on_continue2_pressed():
	get_tree().change_scene_to_file("res://scene3.tscn")


func _on_button_toggled(toggled_on):
	var icon_scale = Vector2(2, 2)
	$Control/Button.set("icon_scale", icon_scale)
	print($Control/Button.icon)
