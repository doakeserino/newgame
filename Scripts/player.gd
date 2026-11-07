extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var alive := true
@onready var interactable_area = $InteractableArea

var bodies_in_interactable_area = []

func _unhandled_input(_event):
	if Input.is_action_just_pressed("interact"):
		if len(bodies_in_interactable_area) > 0:
			interact(bodies_in_interactable_area[0])

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
	if direction == Vector2.RIGHT:
		interactable_area.rotation_degrees = 0
	elif direction == Vector2.DOWN:
		interactable_area.rotation_degrees = 90
	elif direction == Vector2.LEFT:
		interactable_area.rotation_degrees = 180
	elif direction == Vector2.UP:
		interactable_area.rotation_degrees = 270
	move_and_slide()


func _on_interactable_area_body_entered(body):
	if body.is_in_group("friendly_npc"):
		bodies_in_interactable_area.append(body)
	print(bodies_in_interactable_area)

func _on_interactable_area_body_exited(body):
	if body.is_in_group("friendly_npc"):
		bodies_in_interactable_area.erase(body)
	print(bodies_in_interactable_area)
func interact(body):
	body.interacted_with()
