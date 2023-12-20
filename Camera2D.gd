extends Camera2D

var speed = 0.2

func _process(delta):
	position.y -= speed
