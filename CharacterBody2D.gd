extends CharacterBody2D

var SPEED = 500.0
var max_bottom_position = 100
var baisser=0
@export var animplayer: AnimationPlayer

const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 0;

func _ready():
	$AudioStreamPlayer2D.play()
	
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionslide = Input.get_axis("ui_left", "ui_right")
	if directionslide:
		velocity.x = directionslide * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
	if Input.is_action_pressed("ui_down"):
		position.y += 10
		baisser+=10
	if Input.is_action_pressed("ui_up"):
		position.y -= 10
		baisser-=10
	if position.y > max_bottom_position:
		position.y = max_bottom_position
	#if  Input.is_action_just_released("ui_down"):
		#position.y -= baisser
		#baisser=0

func _on_pomme_body_entered(body):
	position.y -= 50
	animplayer.play("gloups")

func _on_oiseau_beau_body_entered(body):
	position.y -= 50
	animplayer.play("gloups")

func _on_avion_auto_body_entered(body):
	position.y -= 50
	animplayer.play("gloups")







func _on_meteorite_body_entered(body):
	position.y -= 50
	animplayer.play("gloups")


func _on_satellite_body_entered(body):
	position.y -= 50
	animplayer.play("gloups")
	


func _on_audio_stream_player_2d_finished():
	$AudioStreamPlayer2D.play()
