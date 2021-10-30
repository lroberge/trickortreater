extends Area2D


export(NodePath) var alertPath
onready var alertLabel = get_node(alertPath) 


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	alertLabel.visible = true


func _on_Area2D_body_exited(body):
	alertLabel.visible = false
