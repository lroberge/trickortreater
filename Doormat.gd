extends Area2D

var exhausted = false

# Doormat refresh variables
export(float, 0.0, 1.0, 0.01) var refreshChance = 0.5         # Initial chance to refresh
export(float, 0.0, 1.0, 0.01) var reduceRefreshChance = 0.1   # Amount to decrease the refresh chance every time we refresh
export(float, 1.0, 60.0, 1.0) var refreshTimeMinimum = 30     # Minimum amount of time (seconds) until refresh
export(float, 1.0, 60.0, 1.0) var refreshTimeMaximum = 50     # Maximum amount of time (seconds) until refresh

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	pass # Replace with function body.

# Called when a Body is on the doormat
func _on_Area2D_body_entered(body):
	if not exhausted:
		# Tell the inventory we'd like to add a candy
		InventorySignals.emit_signal("add_candy", null)
		
		# Roll the dice on a refresh
		var refresh = rng.randf_range(0.0, 1.0)
		if refresh <= refreshChance:
			print("Refreshing this doormat!")
			# Generate a time until refresh based on the minimum and maximum
			var refreshTime = rng.randi_range(refreshTimeMinimum, refreshTimeMaximum)
			# Set up a timer for that length of time, and connect it to our refresh_candy func
			var refreshTimer = get_tree().create_timer(refreshTime)
			refreshTimer.connect("timeout", self, "refresh_candy")
			
		# Exhaust this doormat (for now) regardless
		exhausted = true
	else:
		print("Doormat exhausted - play a door shaking sound?")

func refresh_candy():
	print("Doormat refreshed!")
	exhausted = false
