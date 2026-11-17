extends BoxContainer

signal card_played_extender
var taken := false
var card_to_add : PackedScene = preload("res://Scenes/card.tscn")
var contents
var mouse_on_slot

func _unhandled_input(_event):
	if Input.is_action_just_pressed("click") and mouse_on_slot and taken:
		contents.play_card()
func add_card(card_id : String):
	taken = true
	contents = card_to_add.instantiate()
	add_child(contents)
	contents.set_card_id(str(card_id))
	contents.position = Vector2(100, 150)
	contents.card_played.connect(remove_card)
func remove_card():
	taken = false
	contents.queue_free()
	contents = null
	card_played_extender.emit()
func _on_mouse_entered():
	if taken:
		mouse_on_slot = true
		print(mouse_on_slot)

func _on_mouse_exited():
	if taken:
		mouse_on_slot = false
		print(mouse_on_slot)
