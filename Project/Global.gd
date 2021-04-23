extends Node


func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		get_tree().quit()
	#if event.is_action_pressed("pause menu"):
		#get_tree().pause()
		#get_tree().change_scene("res://Menus/Pause Menu.tscn")
	
