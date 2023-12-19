extends StaticBody2D
var variable_mult = -1
var TimerStart = true
var hauteurgiraffe = randf_range(500, 1000)
# Called when the node enters the scene tree for the first time.

func _ready():
	position.x=randf_range(200, 1800)
	pass # Replace with function body.
func _process(delta):
	position.y += variable_mult*10
	if position.y <= hauteurgiraffe:
		_tgrenaud()


func _on_timer_timeout():
	variable_mult = 1
	print("on redescend")
	
	pass # Replace with function body.
	
func _tgrenaud():
	while TimerStart == true :
		variable_mult = 0
		$Timer.start()
		print("on sarrete")
		TimerStart = false
		

	
