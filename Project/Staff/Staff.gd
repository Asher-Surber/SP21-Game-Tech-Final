#confused about class naming...

#load small blast scene
	
func _init(gem_count, gem_equipped, mana):
	gem_count = self.gem_count
	gem_equipped = self.gem_equipped
	mana = self.mana

func smallBlast(mana):
	if Input.is_action_just_pressed("fire small"):
		if mana >= 5:
			#var smallBlast = smallBlast.instance()
			mana -= 5
		else:
			return "But nothing happened!"	#need to create popup message for empty mana
			
