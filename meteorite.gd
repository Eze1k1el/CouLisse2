extends Area2D

var depx = randf_range(-7, 7)


func _ready():
	if depx < -2 :
		rotation += 0.5
	elif depx > 2 :
		rotation -= 0.5
	position.x = randf_range(200,200,)
	$AudioStreamPlayer2D.play()

func _physics_process(delta):
		await get_tree().create_timer(67.0).timeout
		position.x += depx
		position.y += 30
		if position.y >= -5770:
			position.y = -8800
			position.x = randf_range(200,200,)

func _on_body_entered(body):
	if body.is_in_group("CouLisse"):
		queue_free()

func _on_audio_stream_player_2d_finished():
		$AudioStreamPlayer2D.play()
