extends Node

export var MAX_ITEMS = 10
var items = []

onready var slots = get_children()

export(NodePath) var playerPath
onready var player = get_node(playerPath)

# Called when the node enters the scene tree for the first time.
func _ready():
	# Set up connection for signal if anything tries to add candy
	InventorySignals.connect("add_candy", self, "add_candy")

# Called when anything tries to add a candy
func add_candy(candy: CandyType):
	
	# If we're not given a candy, get a random one
	if candy == null:
		candy = GameData.random_candy()
		
	# Loop through slots; for the first slot that has no item, set its item to the candy and stop looping
	for slot in slots:
		if slot.item == null:
			slot.set_candy(candy)
			break
			
	print("Okay this did work")
