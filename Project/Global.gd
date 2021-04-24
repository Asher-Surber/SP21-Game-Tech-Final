extends Node
var mouseset = true

func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		get_tree().quit()
	#if event.is_action_pressed("pause menu"):
		#get_tree().pause()
		#get_tree().change_scene("res://Menus/Pause Menu.tscn")
	if event.is_action_pressed("mouse"):
		if mouseset == false:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
			mouseset = true
		else:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			mouseset = false
