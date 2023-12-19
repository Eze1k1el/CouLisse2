extends StaticBody2D

const SPEED = 100
var hmin = 750
var hmax = 250
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

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
	position.x += 10
	#fonction qui renvoie true si hmax et false si hmin
	#if _get_h():
		#position.y += 10
	#else :
		#position.y -= 10
		#
func _physics_process(delta):
	if get_viewport().get_visible_rect().size.x + 100 <position.x :
		position.x = -1000

