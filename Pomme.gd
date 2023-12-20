extends Area2D

var score = 0 
@onready var label = $"../Control/Label"

func _on_body_entered(body):
	if body.is_in_group("CouLisse"):
		queue_free()
		score += 1
	update_score_label()

func update_score_label():
	$"../Control/Label".text = "Score: " + str(score)

