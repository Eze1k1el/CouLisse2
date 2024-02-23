extends Camera2D

var speed = 0.8

func _process(delta):
	position.y -= speed
