extends Control
var score= 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
		

func update_score_label():
	$Label.text = "Score: " + str(score)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	score+=1
	update_score_label()
