extends CharacterBody2D

@export var speed = 200

func get_input():
	var vertical = Input.get_axis("up", "down")
	var horizontal = Input.get_axis("left", "right")
	return Vector2(horizontal, vertical)

func _physics_process(delta):
	var direction = get_input()
	if direction.length() > 0:
		velocity = direction * speed
	else:
		velocity = Vector2.ZERO
	move_and_slide()
