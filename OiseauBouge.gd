extends StaticBody2D

const SPEED = 100
var vertical = 1
var hauteur_max = 250
var hauteur_min = 750
# Called when the node enters the scene tree for the first time.
func _ready():
	$Oizo_Anim.play("Oizo_Animation")
	pass # Replace with function body.


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
