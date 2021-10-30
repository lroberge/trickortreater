extends KinematicBody2D

# This variable is exported, and can be edited in the Inspector
# Speed, in maximum pixels per second
export var speed = 400
var sugarRush = 0.5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var velocity = Vector2()
	
	if(Input.is_action_pressed("player_up")):
		velocity.y -= 1
	if(Input.is_action_pressed("player_down")):
		velocity.y += 1
	if(Input.is_action_pressed("player_left")):
		velocity.x -= 1
	if(Input.is_action_pressed("player_right")):
		velocity.x += 1
	
	velocity = velocity.normalized() * speed * max(sugarRush, 0.25)
	
	move_and_slide(velocity)
	
	sugarRush -= 0.01*delta
