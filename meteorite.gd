extends Area2D

var depx = randf_range(-7, 7)

# Called when the node enters the scene tree for the first time.
func _ready():
	if depx < -2 :
		rotation += 0.5
	elif depx > 2 :
		rotation -= 0.5
	position.y = -350
	position.x = randf_range(660,1260,)
	$AudioStreamPlayer2D.play()

func _physics_process(delta):
		position.x += depx
		position.y += 10






func _on_body_entered(body):
	if body.is_in_group("CouLisse"):
		queue_free()
