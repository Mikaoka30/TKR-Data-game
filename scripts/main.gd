extends Node2D

func _on_continue_1_pressed():
	get_node("Control1").visible = false
	get_node("Control2").visible = true

func _on_continue_2_pressed():
	get_node("Control2").visible = false
	get_node("Control3").visible = true

func _on_continue_3_pressed():
	get_node("Control3").visible = false
	get_node("Control4").visible = true

func _on_continue_4_pressed():
	get_node("Control4").visible = false
	get_node("Control5").visible = true
	

