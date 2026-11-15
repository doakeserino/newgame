extends BoxContainer

var taken := false
var card_to_add : PackedScene = preload("res://Scenes/card.tscn")
var contents
var mouse_on_slot

func _unhandled_input(_event):
	if Input.is_action_just_pressed("click") and mouse_on_slot and taken:
		contents.play_card()
func add_card(card_id : String):
	taken = true
	var stats_array = CardStats.card_id_dictionary[card_id]
	contents = card_to_add.instantiate()
	add_child(contents)
	contents.set_card_stats(stats_array[0], stats_array[1], stats_array[2], stats_array[3], stats_array[4])
	contents.position = Vector2(100, 150)
	contents.card_played.connect(remove_card)
func remove_card():
	taken = false
	contents.visible = false

func _on_mouse_entered():
	if taken:
		mouse_on_slot = true
		print(mouse_on_slot)

func _on_mouse_exited():
	if taken:
		mouse_on_slot = false
		print(mouse_on_slot)
