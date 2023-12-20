extends StaticBody2D
var variable_mult = -1
var TimerStart = true
var FlipFlip = true
var hauteurgiraffe = randf_range(800, 1200)
# Called when the node enters the scene tree for the first time.

func _ready():
	position.x=randf_range(200, 1800)
	pass # Replace with function body.
func _process(delta):
	position.y += variable_mult*10
	if position.y <= hauteurgiraffe:
		_tgrenaud()
		_flipflip()
		

func _on_timerflip_timeout():
	scale.x = -1
	
func _on_timer_timeout():
	variable_mult = 1
	scale.x = 1
	print("on redescend")
	
	pass # Replace with function body.
	
func _tgrenaud():
	while TimerStart == true :
		variable_mult = 0
		$Timerdescends.start()
		print("on sarrete")
		TimerStart = false
		
func _flipflip():
	while FlipFlip == true :
		$Timerflip.start()
		FlipFlip = false
		




