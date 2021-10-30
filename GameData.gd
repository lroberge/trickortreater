tool
class_name CandyTypeList extends Node

# Variables
export(Array, Resource) var candy_types setget set_candytypes

# Initialization function - every single variable needs to have a default
func _init(p_candytypes = []):
	candy_types = p_candytypes
	pass
	
func set_candytypes(value):
	candy_types.resize(value.size())
	candy_types = value
	for i in candy_types.size():
		if not candy_types[i]:
			candy_types[i] = CandyType.new()
