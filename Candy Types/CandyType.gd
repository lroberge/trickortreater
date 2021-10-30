tool
class_name CandyType extends Resource

# Variables
export(Texture) var displayImage = null
export(String) var name setget set_candyname
export(int) var sugar = 0

# Initialization function - every single variable needs to have a default
func _init(p_name = "None"):
	name = p_name

func set_candyname(value):
	set_name(value)
	name = value
