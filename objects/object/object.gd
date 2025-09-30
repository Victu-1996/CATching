extends Area2D
class_name object
# velocidade
var spd = global.wspd

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# x vai tar sempre diminuindo pela velocidade
	global_position.x -= spd



func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		stats.hp-=1
		$CollisionShape2D.queue_free()
