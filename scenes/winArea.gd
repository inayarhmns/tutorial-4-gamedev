extends Area2D

func _ready():
	pass # Replace with function body.



func _on_winArea_body_entered(body):
	if body.get_name() == "Player":
		print("win")
		var sceneName = "WinScreen"
		get_tree().change_scene(str("res://scenes/" + sceneName + ".tscn"))
	

