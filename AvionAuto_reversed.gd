extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioStreamPlayer2D.play()
	position.x = 1800
	position.y = randf_range(900, 200)
	
func _on_audio_stream_player_finished():
	$AudioStreamPlayer2D.play()

#
#func _get_h():
	#var h
	#if position.y <= 750 :
		#h = true
	#elif position.y >= 250:
		#h = false
	#return h

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= 10
	#fonction qui renvoie true si hmax et false si hmin
	#if _get_h():
		#position.y += 10
	#else :
		#position.y -= 10
		#
func _physics_process(delta):
	if get_viewport().get_visible_rect().size.x - 5000 >position.x :
		position.x = 1800



func _on_body_entered(body):
	if body.is_in_group("CouLisse"):
		queue_free()
