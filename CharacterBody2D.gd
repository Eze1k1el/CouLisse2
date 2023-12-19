extends CharacterBody2D


var SPEED = 300.0
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
	
	var directionupdown = Input.get_axis("ui_up", "ui_down")
	if position.y == 0:
		velocity.y = directionupdown * 0
	if directionupdown:
		velocity.y = directionupdown * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()



