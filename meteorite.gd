extends StaticBody2D

var depx = randf_range(-7, 7)

# Called when the node enters the scene tree for the first time.
func _ready():
	position.y = -350
	position.x = randf_range(660,1260,)
	$AudioStreamPlayer2D.play()

func _physics_process(delta):
		position.x += depx
		position.y += 10
