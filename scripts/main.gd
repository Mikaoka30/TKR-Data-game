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
	

func _on_continue_5_pressed():
	get_node("Control5").visible = false
	get_node("Control6").visible = true

##Function to toggle the visibility of the map lines
var texture_gline
var texture_fline
var texture_sline
var texture_iline
var texture_tline

func _ready():
	texture_gline = $Control5/GLine
	$Control5/gbtn.pressed.connect(_on_gbtn_pressed)
	
	texture_fline = $Control5/FLine
	$Control5/fbtn.pressed.connect(_on_fbtn_pressed)
	
	texture_sline = $Control5/SLine
	$Control5/sbtn.pressed.connect(_on_sbtn_pressed)
	
	texture_iline = $Control5/ILine
	$Control5/ibtn.pressed.connect(_on_ibtn_pressed)
	
	texture_tline = $Control5/TLine
	$Control5/tbtn.pressed.connect(_on_tbtn_pressed)
	
func _on_gbtn_pressed():
	texture_gline.visible = not texture_gline.visible
	
func _on_fbtn_pressed():
	texture_fline.visible = not texture_fline.visible
	
func _on_sbtn_pressed():
	texture_sline.visible = not texture_sline.visible

func _on_ibtn_pressed():
	texture_iline.visible = not texture_iline.visible

func _on_tbtn_pressed():
	texture_tline.visible = not texture_tline.visible
	
	
func _on_back_2_pressed():
	get_node("Control1").visible = true
	get_node("Control2").visible = false
	
	
func _on_back_3_pressed():
	get_node("Control2").visible = true
	get_node("Control3").visible = false


func _on_back_4_pressed():
	get_node("Control3").visible = true
	get_node("Control4").visible = false


func _on_back_5_pressed():
	get_node("Control4").visible = true
	get_node("Control5").visible = false

func _on_back_6_pressed():
	get_node("Control5").visible = true
	get_node("Control6").visible = false
