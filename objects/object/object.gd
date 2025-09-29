extends Area2D
class_name object
# velocidade
const spd = 7

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# x vai tar sempre diminuindo pela velocidade
	global_position.x -= spd
