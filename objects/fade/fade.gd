extends Control
@onready var fade = $in_out

signal fade_finished

func _in():
	fade.play("fade_in")

func out():
	fade.play("fade_out")


func _on_in_out_animation_finished(anim_name: StringName) -> void:
	if anim_name == "fade_out":
		fade_finished.emit()
