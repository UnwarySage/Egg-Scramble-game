
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass




func _on_start_input_event( ev ):
	if (ev.is_pressed()):
		get_tree().change_scene("res://scenes/game.scn")


func _on_exit_input_event( ev ):
	if (ev.is_pressed()):
		get_tree().quit()
