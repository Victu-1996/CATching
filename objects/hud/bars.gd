@icon("res://sprites/fish.png")
extends Control

@onready var hungry= $hungry
@onready var life = $life
@export_exp_easing("inout") var steps
var hvalue = stats.hp_max
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	hvalue = move_toward(hvalue,stats.hp,steps)
	hungry.value = stats.hungry
	life.value = hvalue
