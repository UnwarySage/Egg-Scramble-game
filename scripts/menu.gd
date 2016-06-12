
extends Node2D
var final_pos= Vector2(0,0)
# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	final_pos=get_pos()
	var new_pos=final_pos
	new_pos.y-=550
	set_pos(new_pos)
	set_process(true)
	
func _process(delta):
	var new_pos=get_pos()
	new_pos.y=new_pos.y+15
	if (!new_pos>=final_pos):
		set_pos(new_pos)
	else:
		set_process(false)

func _on_start_input_event( ev ):
	if (ev.is_pressed()):
		get_tree().change_scene("res://scenes/game.scn")


func _on_exit_input_event( ev ):
	if (ev.is_pressed()):
		get_tree().quit()
