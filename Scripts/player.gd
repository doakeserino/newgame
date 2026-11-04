extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var alive := true
func _physics_process(_delta):
	if alive:
		process_movement()
		
func process_movement() -> void:
	var direction := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if direction != Vector2.ZERO:
		velocity = direction * SPEED
		
	else:
		var tween = get_tree().create_tween()
		tween.tween_property(self, "velocity", Vector2.ZERO, 0.1)
		

	move_and_slide()
