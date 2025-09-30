extends CenterContainer

@onready var hungry= $hungry
@onready var life = $life

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	hungry.value = stats.hungry
	life.value = stats.hp
