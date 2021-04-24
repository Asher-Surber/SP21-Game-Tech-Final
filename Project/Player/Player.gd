extends KinematicBody

# onready var Staff
onready var Camera = $Pivot/Camera

var max_speed = 8
var jump_speed = 5
var mouse_sensitivity = 0.005
var mouse_range = 2
var velocity = Vector3()
var gravity = 9.8

var max_health = 10
var current_health = 10
var inventory = []

func _ready():
	pass

func _process(_delta):
	get_input()

func _physics_process(delta):
	velocity.y -= gravity * delta
	var desired_velocity = get_input() * max_speed
	
	velocity.x = desired_velocity.x
	velocity.z = desired_velocity.z
	velocity = move_and_slide(velocity, Vector3(0,1,0), true)


func get_input():
	var input_dir = Vector3(0,0,0)
	if Input.is_action_pressed("forward"):
		#input_dir.z += 1
		input_dir += -Camera.global_transform.basis.z
	if Input.is_action_pressed("back"):
		#input_dir.z -= 1
		input_dir += Camera.global_transform.basis.z
	if Input.is_action_pressed("left"):
		#input_dir.x -= 1
		input_dir += -Camera.global_transform.basis.x
	if Input.is_action_pressed("right"):
		#input_dir += 1
		input_dir += Camera.global_transform.basis.x
	if Input.is_action_pressed("jump") and is_on_floor():
		if "jump" and is_on_floor():
			velocity.y = jump_speed
	input_dir = input_dir.normalized()
	return input_dir
	  
	
func _unhandled_input(event):
	if event is InputEventMouseMotion:
		$Pivot.rotate_x(-event.relative.y * mouse_sensitivity)
		rotate_y(-event.relative.x * mouse_sensitivity)
		$Pivot.rotation.x = clamp($Pivot.rotation.x, -mouse_range, mouse_range)
