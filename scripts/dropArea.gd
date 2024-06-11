extends Node2D

var draggable = false
var is_inside_dropable = false
var body_ref_position
var offset: Vector2
var initialPos: Vector2

func _process(delta):
	if draggable:
		if Input.is_action_just_pressed("click"):
			initialPos = global_position
			offset = get_global_mouse_position() - global_position
			SocialMediaVars.is_dragging = true
		if Input.is_action_pressed("click"):
			global_position = get_global_mouse_position() - offset
		elif Input.is_action_just_released("click"):
			SocialMediaVars.is_dragging = false
			var tween = get_tree().create_tween()
			if is_inside_dropable:
				tween.tween_property(self, "position", body_ref_position, 0.2).set_ease(Tween.EASE_OUT)
			else:
				tween.tween_property(self, "position",initialPos, 0.2).set_ease(Tween.EASE_OUT)

func _on_area_2d_mouse_entered():
	if not SocialMediaVars.is_dragging:
		draggable = true
		scale = Vector2(1.05, 1.05)
		print("dragging")


func _on_area_2d_mouse_exited():
	if not SocialMediaVars.is_dragging:
		draggable = false
		scale = Vector2(1, 1)
		print("rushing")

func _on_area_2d_body_entered(body:StaticBody2D):
	if body.is_in_group('dropable'):
		is_inside_dropable = true
		body.modulate = Color(Color.GREEN, 1)
		body_ref_position = body.position
		print(initialPos)
		print(body.position)

func _on_area_2d_body_exited(body):
	if body.is_in_group('dropable'):
		is_inside_dropable = false
		body.modulate = Color(Color.RED, 0.7)


