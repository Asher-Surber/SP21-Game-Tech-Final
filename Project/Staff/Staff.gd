#confused about class naming...

extends Spatial
#export(Script) var Staff

#class_name Staff
#class Staff extends Spatial:
	
var SmallBlast = load("SmallBlast.tscn")
var LargeBlast = load("LargeBlast.tscn")

export(int) var crystal_count
export(int) var mana

# warning-ignore:unused_argument
# warning-ignore:unused_argument
# warning-ignore:unused_argument
#	func _init(gem_count, gem_equipped, mana):
#		gem_count = self.gem_count
#		gem_equipped = self.gem_equipped
#		mana = self.mana
func _process(_delta):
	get_input()

func get_input():
	if Input.is_action_just_pressed("fire"):
		SmallBlast.smallBlast()
	if Input.is_action_pressed("fire"):
		LargeBlast.largeBlast()
