extends Control
@onready var level = $metros/level_percentage
@onready var label_metros = $metros/actual
@onready var label_end = $metros/end
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	level.value = global.metros
	level.max_value = global.end
	label_metros.text = str(roundi(global.metros))+"m"
	label_end.text = str(global.end)+"m"
