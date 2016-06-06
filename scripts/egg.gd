
extends RigidBody2D
export (PackedScene) var splatter

func _ready():
	print("Egg Ready now")



func _on_egg_body_enter( body ):
	if (body.get_name()=="ground"):
		print("I broke")
		#Handle making splatter, placing it and parenting it
		var s=splatter.instance()
		var splatter_node=get_node("/root/main/splatter_parent")
		print(splatter_node)
		s.set_pos(Vector2(get_pos().x,780))
		splatter_node.add_child(s)
		#update the score
		var score_node= get_node("/root/score_keep")
		score_node.player_score -= 15
		queue_free()

