extends Node2D

func _on_Note_body_entered(body):
	var dialog = Dialogic.start("Note")
	add_child(dialog)
