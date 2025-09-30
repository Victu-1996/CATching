extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if stats.hp == 0:
		reset()

func reset():
	get_tree().reload_current_scene()
	
	stats.hp = stats.hp_max
	stats.hungry = stats.hungry_max
