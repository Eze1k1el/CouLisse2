extends Label
var score=0

func _on_pomme_body_entered(body):
	score+=1



func _process(delta):
	text="Score:"+str(score)


func _on_oiseau_beau_body_entered(body):
	score+=1
