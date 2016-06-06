extends Node2D
#exports
export var delay = 1.0
export (PackedScene) var egg
#locals
var timer = 0
var variance = 150
var debug = true

func _ready():
	set_process(true)

func _process(delta):
	timer += delta
	if(timer >= delay):
		timer =0
		create_egg()

func create_egg():
	print("creating egg")
	var e = egg.instance()
	e.add_to_group("catchables")
	add_child(e)
	
	if(!debug):
		e.set_pos(Vector2(rand_range(0,get_viewport().get_visible_rect().size.x),0))
		e.set_linear_velocity(Vector2(rand_range(-variance,variance),rand_range(-variance,variance)))
	else:
		e.set_pos(Vector2(320,0))
