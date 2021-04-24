#confused about class naming...

extends Spatial
#export(Script) var Staff

#class_name Staff
#class Staff extends Spatial:
	
onready var SmallBlast = load("res://Staff/SmallBlast.tscn")
onready var container = get_node("/root/Level1/BlastContainer")
onready var Staff = load("res://Staff/Staff.tscn")

export(int) var crystal_count
export(int) var mana = 100

# warning-ignore:unused_argument
# warning-ignore:unused_argument
# warning-ignore:unused_argument
#	func _init(gem_count, gem_equipped, mana):
#		gem_count = self.gem_count
#		gem_equipped = self.gem_equipped
#		mana = self.mana


func smallBlast():
	if Input.is_action_pressed("fire"):
#		if mana >= 5:
		var small_Blast = SmallBlast.instance()
		container.add_child(small_Blast)
		small_Blast.position = Staff.position
		small_Blast.velocity = Vector3(2,2,2)
#			mana -= 5
#		else:
#			return "But nothing happened!"	#need to create popup message for empty mana
