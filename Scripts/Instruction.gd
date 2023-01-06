extends Node2D

func _on_Note_body_entered(body):
	pass
	
func _on_Portal_body_entered(body):
	get_tree().change_scene("res://Scenes/Main.tscn")
