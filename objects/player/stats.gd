extends Node

var hp = 3
var hp_max = 3
var hungry=3
var hungry_max = 3

var starve_max = 2*60
var starve_time = starve_max
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	hp = clamp(hp,0,hp_max)
	hungry = clamp(hungry,0,hungry_max)
	hungry-=0.007
	
	if hungry <= 0:
		starve_time-=1
		if starve_time <= 0:
			global.d_type = "morreu de fome ;-;"
			hp-=1
			starve_time = starve_max
	else:
		starve_time = starve_max
	
func reset():
	hp = hp_max
	hungry = hungry_max
