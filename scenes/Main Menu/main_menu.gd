extends Control

@export_file("*.tscn") var game:String
@export_file("*.tscn") var options

func _on_start() -> void:
	get_tree().change_scene_to_file(game)


func _on_options() -> void:
	pass # Replace with function body.


func _on_exit() -> void:
	get_tree().quit()
