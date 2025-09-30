extends Marker2D
# tempo inicial 
var t_in = randf_range(min*60,max*60)
# o tempo em si
var tempo = t_in
# oque vai ser spawnado
var choose = 0
@onready var object = [
	preload("res://objects/food/food.tscn"),
	preload("res://objects/object/object.tscn")
	]
@export_category("timer")
@export var min := 1
@export var max := 5
@export_category("type")
@export_enum("food","obstacles") var type

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	randomize()
	# tempo vai sempre ser diminuido
	tempo-=1
	if tempo <= 0:
		t_in = randf_range(min*60,max*60)
		# se tempo chega a 0 então spawna, e reinicia
		spawnar()
		tempo = t_in

func spawnar():
	# isso me deu um pouco de dor de cabeça, mas é fácil de aprender
	var instance = object[type].instantiate()
	get_tree().current_scene.add_child(instance)
	instance.global_position = global_position
	print("la ele")
