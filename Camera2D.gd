extends Camera2D

var speed = 1

func _process(delta):
	position.y -= speed
