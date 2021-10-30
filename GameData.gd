tool
extends Node

# Variables
export(Array, Resource) var candy_types setget set_candytypes

var rng = RandomNumberGenerator.new()

# Initialization function - every single variable needs to have a default
func _init(p_candytypes = []):
	candy_types = p_candytypes

func _ready():
	rng.randomize()
	
func set_candytypes(value):
	candy_types.resize(value.size())
	candy_types = value
	for i in candy_types.size():
		if not candy_types[i]:
			candy_types[i] = CandyType.new()

func random_candy():
	var candyIndex = rng.randi_range(0, candy_types.size() - 1)
	return candy_types[candyIndex]
