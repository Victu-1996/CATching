@icon("res://sprites/icon.svg")
extends Control

func _on_pause(toggled_on: bool) -> void:
	get_tree().paused = toggled_on
	
	if toggled_on:
		self.visible =  true
		$page_up.play("page_up")
	else:
		$page_up.play("page_down")
		self.visible = false
