extends Node2D
@onready var fede = $Camera2D/CanvasLayer/fade
var metros = 0
@export var end:int = 100
@export_file("*.tscn") var next:String
@export var fade:Control
@export var death_screen:Control
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	stats.hungry = stats.hungry_max
	stats.hp = stats.hp_max
	signals.finished.connect(fin)
	fede._in()
	signals.restart.connect(reset)
	$Camera2D/CanvasLayer/death_screen.visible = false


func fin():
	fede.out()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$margin/ground/par_1.autoscroll.x = (-global.wspd*60)*delta
	$margin/ground/par_2.autoscroll.x = ((-global.wspd*60)-9000)*delta
	metros+=0.1
	global.metros = metros
	global.end = end
	if stats.hp == 0:
		signals.dead.emit()
	if metros >= end:
		pass
		#fede.out()

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
