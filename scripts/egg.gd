
extends RigidBody2D
export (PackedScene) var splatter

func _ready():
	print("Egg Ready now")
	set_process(true)



func _on_egg_body_enter( body ):
	if (body.get_name()=="ground"):
		print("I broke")
		#Handle making splatter, placing it and parenting it
		var s=splatter.instance()
		var splatter_node=get_node("/root/main/splatter_parent")
		s.set_pos(Vector2(get_pos().x,780))
		splatter_node.add_child(s)
		#update the score and a strike against the player
		score_keep.player_score -= 1
		score_keep.eggs_dropped+=1
		queue_free()

func _process(delta):
	var present_pos=get_pos()
	if(present_pos.y>960):
		print("I hit rock bottom")
		score_keep.player_score+=10
		queue_free()

