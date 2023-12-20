extends Area2D
var speed=1


# Called when the node enters the scene tree for the first time.
func _ready():
	position.x = 2670
	position.y = randf_range(900,200)
	$AudioStreamPlayer2D.play()
	
func _on_audio_stream_player_2d_finished():
	$AudioStreamPlayer2D.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation+=speed*delta
	position.x -= 5

func _physics_process(delta):
	if position.x < -750 :
		position.x = 2670


func _on_body_entered(body):
	if body.is_in_group("CouLisse"):
		queue_free()
