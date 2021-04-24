extends Area

#var velocity = Vector3(0,0,0)
#var position = get_viewport().get_mouse_position()

#func _physics_process(_delta):
#	velocity += 5


func _on_SmallBlast_body_entered(body):
	body.queue_free()
	queue_free()
