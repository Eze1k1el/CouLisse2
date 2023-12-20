extends Label

var messages = [
	" Eh, toi ! Tu serais pas un GAMER ?","J’ai fait un jeu trop stylé sur GODOT LE SUPER MOTEUR DE JEU.","Je suis sûr que ça te plaira. ","Attends-moi là, faut que j’aille le chercher.\n Tu vas voir c’est vraiment trop trop cool. ",
"Si tu veux en attendant, j’ai un petit jeu un peu naze mais rigolo. ","A tout de suite ! ",
]

var typing_speed = 0.05
var read_time = 2

var current_message = 0
var display = ""
var current_char = 0

func _ready():
	$AudioStreamPlayer2D.play()
	start_dialogue()
	
func start_dialogue():
	current_message = 0
	display = ""
	current_char = 0
	
	$"../next_char".set_wait_time(typing_speed)
	$"../next_char".start()

func stop_dialogue():
	# get_parent().remove_child(self)
	queue_free()

func _on_next_char_timeout():
	if (current_char < len(messages[current_message])):
		var next_char = messages[current_message][current_char]
		display += next_char
		
		$"../Label".text = display
		current_char += 1
	else:
		$"../next_char".stop()
		$"../next_message".one_shot = true
		$"../next_message".set_wait_time(read_time)
		$"../next_message".start()

func _on_next_message_timeout():
	if (current_message == len(messages) - 1):
		stop_dialogue()
	else: 
		current_message += 1
		display = ""
		current_char = 0
		$"../next_char".start()



func _on_audio_stream_player_2d_finished():
	$AudioStreamPlayer2D.play()
