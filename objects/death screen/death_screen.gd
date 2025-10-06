extends Control

@export_file("*.tscn") var menu:String

func _ready() -> void:
	signals.dead.connect(dread)

func _process(delta: float) -> void:
	$MarginContainer/VBoxContainer/Label2.text = global.d_type
func dread():
	self.visible = true
	get_tree().paused = true


func _on_reiniciar() -> void:
	get_tree().paused = false
	signals.restart.emit()


func _on_sair() -> void:
	get_tree().change_scene_to_file("res://scenes/Main Menu/main_menu.tscn")
