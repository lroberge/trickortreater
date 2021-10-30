extends Area2D


export(NodePath) var alertPath
onready var alertLabel = get_node(alertPath)
var exhausted = false

export(float, 0.0, 1.0, 0.01) var refreshChance = 0.5
export(int, 1, 60) var refreshTimeMinimum = 30
export(int, 1, 60) var refreshTimeMaximum = 50

var rng = RandomNumberGenerator.new()

signal give_candy(type)


# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	if not exhausted:
		emit_signal("give_candy", null)
		var refresh = rng.randf_range(0.0, 1.0)
		if refresh <= refreshChance:
			var refreshTime = rng.randi_range(refreshTimeMinimum, refreshTimeMaximum)
			var refreshTimer = get_tree().create_timer(refreshTime)
			refreshTimer.connect("timeout", )
		exhausted = true
	else:
		print("Doormat exhausted - play a door shaking sound?")

func

func _on_Area2D_body_exited(body):
	alertLabel.visible = false
