extends Node
var mouse = null

func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		get_tree().quit()
	#if event.is_action_pressed("pause menu"):
		#get_tree().pause()
		#get_tree().change_scene("res://Menus/Pause Menu.tscn")
	if mouse == null:
		if event.is_action_pressed("mouse"):
			mouse = Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		
	if mouse != null:
		if event.is_action_pressed("mouse"):
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			mouse = null
