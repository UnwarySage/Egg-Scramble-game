extends Node2D
#exports
export var delay = 1.0
export (PackedScene) var egg
#locals
var timer = 0
var variance = 150
var debug = false
var target= Vector2(320,500)


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
		var temp_vector= Vector2(0,-20)
		temp_vector.x=(rand_range(0,get_viewport().get_visible_rect().size.x))
		e.set_pos(temp_vector)
		#now we have set the egg to a random position above the top of the screen
		#now calculate the vector towards target.
		temp_vector=target-temp_vector
		e.set_linear_velocity(temp_vector.normalized()*300)
		#We have flung the egg at the target, now spin it
		e.set_angular_velocity(rand_range(-15,15))
		#randomize target for next go round.
		if (randi(5)==1):
			target.x=(rand_range(0,get_viewport().get_visible_rect().size.x))
	else:
		e.set_pos(Vector2(320,0))
