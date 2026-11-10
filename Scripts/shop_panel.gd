extends Node2D

var card : PackedScene = preload("res://Scenes/card.tscn")
var new_card
@onready var stats_label = $StatsLabel
@onready var button = $Button


func display_card(card_id : int):
	new_card = card.instantiate()
	add_child(new_card)
	new_card.set_card_id(card_id)
	new_card.position.y -= 250
	new_card.scale = Vector2(0.75, 0.75)
	new_card.card_stats["cost"] = CardStats.card_id_dictionary[str(card_id)][4]
	display_stats(card_id)
func display_stats(card_id : int): 
	var repetitions : int = 0
	for stat in CardStats.card_id_dictionary[str(card_id)]:
		stats_label.text += CardStats.stat_names[repetitions] + ": "
		stats_label.text += str(stat).capitalize() + "\n"
		repetitions += 1

func _on_button_pressed():
	GlobalStats.change_stats("money", - new_card.card_stats["cost"])
