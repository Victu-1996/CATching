extends Marker2D

const t_in = 5*60
var tempo = t_in
@onready var object = preload("res://objects/object/object.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	tempo-=1
	if tempo <= 0:
		spawnar()
		tempo = t_in

func spawnar():
	var instance = object.instantiate()
	get_tree().current_scene.add_child(instance)
	instance.global_position = global_position
	print("la ele")
