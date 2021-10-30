extends Node

export var MAX_ITEMS = 10
var items = []

export(NodePath) var playerPath
onready var player = get_node(playerPath)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
