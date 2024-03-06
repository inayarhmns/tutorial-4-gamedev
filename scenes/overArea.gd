extends Area2D


func _ready():
	pass # Replace with function body.


func _on_overArea_body_entered(body):
	if body.get_name() == "Player":
		print("game over")
		var sceneName = "LoseScreen"
		get_tree().change_scene(str("res://scenes/" + sceneName + ".tscn"))
	
