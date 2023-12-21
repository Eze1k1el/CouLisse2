extends Camera2D

var speed = 3

func _process(delta):
	position.y -= speed
