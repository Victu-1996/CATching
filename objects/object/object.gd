extends Area2D
class_name object
# velocidade
var spd = global.wspd
var rspd = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rspd = spd*delta
	# x vai tar sempre diminuindo pela velocidade
	simple_move()
	if !$ground.is_colliding():
		self.monitoring = false
		self.visible = false
	else:
		self.monitoring = true
		self.visible = true




func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		stats.hp-=1
		$CollisionShape2D.queue_free()

func simple_move():
	global_position.x -= rspd
