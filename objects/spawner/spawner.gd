extends Marker2D
# tempo inicial 
var t_in = randf_range(1*60,5*60)
# o tempo em si
var tempo = t_in
# oque vai ser spawnado
@onready var object = preload("res://objects/object/object.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	randomize()
	# tempo vai sempre ser diminuido
	tempo-=1
	if tempo <= 0:
		t_in = randf_range(60,5*60)
		# se tempo chega a 0 então spawna, e reinicia
		spawnar()
		tempo = t_in

func spawnar():
	# isso me deu um pouco de dor de cabeça, mas é fácil de aprender
	var instance = object.instantiate()
	get_tree().current_scene.add_child(instance)
	instance.global_position = global_position
	print("la ele")
