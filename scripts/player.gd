extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	# pull the player down when in the air
	if not is_on_floor():
		velocity += get_gravity() * delta

	# jump only when standing on the ground
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# -1 for left, 1 for right, 0 for no key
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		sprite.flip_h = direction < 0   # face left when moving left
		sprite.play("walk")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		sprite.stop()                   # freeze when standing still

	move_and_slide()
