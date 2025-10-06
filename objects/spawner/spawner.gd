extends Marker2D
# tempo inicial 
var t_in = randf_range(min,max)
# o tempo em si
var tempo = t_in
# oque vai ser spawnado
var choose = 0
@onready var object = [
	preload("res://objects/food/food.tscn"),
	preload("res://objects/object/object.tscn"),
	preload("res://objects/roof/roof.tscn"),
	preload("res://objects/box/box.tscn")
	]
@export_group("timer")
@export var min := 1
@export var max := 5
@export_group("type")
@export_enum("food","obstacles","roof","box") var type
func _ready() -> void:
	randomize()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	randomize()
	# tempo vai sempre ser diminuido
	tempo-= delta
	if tempo <= 0:
		t_in = randf_range(min,max)
		# se tempo chega a 0 então spawna, e reinicia
		spawnar()
		tempo = t_in

func spawnar():
	var instance = object[type].instantiate()
	if type != 3:
		# isso me deu um pouco de dor de cabeça, mas é fácil de aprender
		get_tree().current_scene.add_child(instance)
		instance.global_position = global_position
		print("la ele")
	else:
		if global.metros >= global.end:
			get_tree().current_scene.add_child(instance)
			instance.global_position = global_position
