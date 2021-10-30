extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export(NodePath) var alertPath
onready var alertLabel = get_node(alertPath) 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	alertLabel.visible = true
	pass # Replace with function body.


func _on_Area2D_body_exited(body):
	alertLabel.visible = false
	pass # Replace with function body.
