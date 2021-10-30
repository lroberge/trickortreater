tool
class_name CandyType extends Resource

# Variables
export(Texture) var displayImage
export(String) var name setget set_candyname
export(int) var sugar

# Initialization function - every single variable needs to have a default
func _init(p_displayImage = null, p_name = "None", p_sugar = 0):
	displayImage = p_displayImage
	name = p_name
	sugar = p_sugar

func set_candyname(value):
	set_name(value)
	name = value
