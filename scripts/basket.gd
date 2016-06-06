
extends KinematicBody2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)
	print("basket ready")
	pass
	
func _process(delta):
	var this_pos = get_pos()
	this_pos.x= get_viewport().get_mouse_pos().x
	set_pos(this_pos)





func _on_basket_trigger_body_enter( body ):
	if(body.is_in_group("catchables")):
		body.queue_free()
		score_keep.player_score+=5
	pass
