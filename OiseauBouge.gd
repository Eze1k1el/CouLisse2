extends Area2D

const SPEED = 100
var vertical = 1
var hauteur_max = 250
var hauteur_min = 750
# Called when the node enters the scene tree for the first time.
func _ready():
	$Oizo_Anim.play("Oizo_Animation")
	$AudioStreamPlayer2D.play()
	
func _on_audio_stream_player_2d_finished():
	$AudioStreamPlayer2D.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _physics_process(delta):
	position.x += 5
	if (position.y <= hauteur_max):
		vertical = 1
	elif (position.y >= hauteur_min):
		vertical = (-1)
	position.y += vertical * 5
	
	if (get_viewport().get_visible_rect().size.x + 100 < position.x):
		position.x = -500
		
func _on_body_entered(body):
	if body.is_in_group("CouLisse"):
		queue_free()


