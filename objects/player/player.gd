extends CharacterBody2D

var grav := 0
@export_range(1,400,1) var jump_f:float

func _process(delta: float) -> void:
	global_position.y += grav
	if !is_on_floor():
		grav += 1
	else:
		grav = 0
		if Input.is_action_just_released("touch"):
			grav += -jump_f
	move_and_slide()
