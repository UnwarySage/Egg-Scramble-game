
extends Control

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	set_process(true)

func _process(delta):
	var display = get_node("level_display")
	display.set_text("Score: "+str(score_keep.player_score))
	
	var display = get_node("lives_display")
	display.set_text("Lives: "+str(score_keep.eggs_dropped))