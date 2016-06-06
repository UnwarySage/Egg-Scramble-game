
extends Sprite
export var fadetime = 1500
var time=0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)
	print("I'm a mess")

func _process(delta):
	time += delta
	if(time >= fadetime):
		print("I got cleaned up")
		queue_free()
