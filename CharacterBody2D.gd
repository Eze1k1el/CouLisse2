extends CharacterBody2D

var SPEED = 500.0
var max_bottom_position = 100
var baisser=0
@export var animplayer: AnimationPlayer

const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 0;


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
	global_position = global_position.clamp(Vector2.ZERO, get_viewport_rect().size)
	if Input.is_action_pressed("ui_down"):
		position.y += 10
		baisser+=10
	if position.y > max_bottom_position:
		position.y = max_bottom_position
	if  Input.is_action_just_released("ui_down"):
		position.y -= baisser
		baisser=0

func _on_pomme_body_entered(body):
	position.y -= 250
	animplayer.play("gloups")



	
	



