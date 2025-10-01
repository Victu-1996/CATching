extends Node2D
@onready var fede = $Camera2D/CanvasLayer/fade
var metros = 0
@export var end:int = 100
@export_file("*.tscn") var next:String
@export var fade:Control
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	fede._in()
	$margin/ground/par_1.autoscroll.x = -global.wspd*60
	$margin/ground/par_2.autoscroll.x = (-global.wspd*60)-200

	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	metros+=0.1
	global.metros = metros
	global.end = end
	if stats.hp == 0:
		reset()
	if metros >= end:
		fede.out()

func reset():
	get_tree().reload_current_scene()
	
	stats.hp = stats.hp_max
	stats.hungry = stats.hungry_max

func win():
	if next == null:
		get_tree().quit()
	else:
		get_tree().change_scene_to_file(next)


func _on_fade_finished() -> void:
	win()
