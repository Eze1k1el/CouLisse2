extends Area2D

var depx = randf_range(-7, 7)


func _ready():
	if depx < -2 :
		rotation += 0.5
	elif depx > 2 :
		rotation -= 0.5
	position.x = randf_range(400,900,)
	$AudioStreamPlayer2D.play()

func _physics_process(delta):
		position.x += depx
		position.y += 10
		if get_viewport().get_visible_rect().size.y + 300 <position.y :
			position.y = -300

func _on_body_entered(body):
	if body.is_in_group("CouLisse"):
		queue_free()






	pass # Replace with function body.
