extends KinematicBody

export var Staff = "Staff/Staff.gd"
onready var Camera = $Pivot/Camera
var mouse_sensitivity = 0.002
var mouse_range = 1.2

var max_health = 10
var current_health = 10
var inventory = []

func _ready():
	pass

func _process(_delta):
	get_input()

func _physics_process(_delta):
	pass


func get_input():
	var input_dir = Vector3(0,0,0)
	if Input.is_action_pressed("forward"):
		input_dir.z += 1
	if Input.is_action_pressed("back"):
		input_dir.z -= 1
	if Input.is_action_pressed("left"):
		input_dir.x -= 1
	if Input.is_action_pressed("right"):
		input_dir += 1
	if Input.is_action_just_pressed("jump"):
		input_dir.y -= 1
	if Input.is_action_just_pressed("fire"):
		Staff.smallBlast()
	  
	
func _unhandled_input(event):
	if event is InputEventMouseMotion:
		$Pivot.rotate_x(-event.relative.y * mouse_sensitivity)
		rotate_y(-event.relative.x * mouse_sensitivity)
		$Pivot.rotation.x = clamp($Pivot.rotation.x, -mouse_range, mouse_range)
