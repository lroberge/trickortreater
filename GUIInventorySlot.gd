extends Panel

var item = null

func _ready():
	pass

func set_candy(candy: CandyType):
	$ItemTexture.texture = candy.displayImage
