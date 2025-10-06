extends Control

func _ready() -> void:
	signals.finished.connect(appear)

func appear(do:bool):
	self.visible = do
	get_tree().paused = do


func _on_sair() -> void:
	get_tree().change_scene_to_file("res://scenes/Main Menu/main_menu.tscn")


func _on_proxima() -> void:
	signals.next.emit()
