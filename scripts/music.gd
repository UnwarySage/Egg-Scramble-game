
extends StreamPlayer

var Song = load("res://sounds/DvorakPolka.ogg")

func _ready():
	set_stream(Song)
	play()


