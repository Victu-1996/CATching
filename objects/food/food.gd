extends object

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_position.x -= spd
	

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		print("Miau,casada.")
