extends CharacterBody2D

# gravidade
var grav = 0
# direção
var dir = 0
# speed (velocidade)
var spd = 5
# jump force (força do pulo)
@export_range(1,400,1) var jump_f:float

func _physics_process(delta: float) -> void:
	# o x vai tá sempre somando com a direção vezes a velocidade
	global_position.x += dir*spd
	# o y vai tá sempre somando pela gravidade
	global_position.y += grav
	if !is_on_floor():
		# se ele não estiver no chão a gravidade vai começar a fazer efeito
		grav += 0.7
	else:
		# do contrário se ele estiver no chão ele pode pular
		if Input.is_action_pressed("touch"):
			# se ele pular a gravidade vai virar o pulo que depois vai voltar a ser a gravidade 
			grav = -jump_f
	if Input.is_action_pressed("left"):
		# se for pra esquerda a direção é negativa
		dir = -1
		spd = global.wspd*delta
	elif Input.is_action_pressed("right"):
		# como  o x tá sempre somando por Dir*spd então se a Dir for negativa a spd vai ser negativa
		dir = 1
		spd = (global.wspd-2)*delta
	else:
		# se nada então nada
		dir = 0
	# esse comando aqui é bala
	move_and_slide()
