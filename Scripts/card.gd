class_name base_card
extends Node2D

var card_stats = {
	"cardid" : "0",
	"element" : null,
	"damage" : 10,
	"defense" : 10,
	"sprite_frame" : 0
}

@onready var test_label = $TestLabel
@onready var animated_sprite_2d = $AnimatedSprite2D

func set_card_stats(element : String, damage : int, defense : int, sprite_frame : int):
	card_stats["element"] = element
	card_stats["damage"] = damage
	card_stats["defense"] = defense
	card_stats["sprite_frame"] = sprite_frame
	test_label.text = element
	animated_sprite_2d.frame = card_stats["sprite_frame"]
func set_card_id(card_id : int):
	card_stats["element"] = CardStats.card_id_dictionary[str(card_id)][0]
	card_stats["damage"] = CardStats.card_id_dictionary[str(card_id)][1]
	card_stats["defense"] = CardStats.card_id_dictionary[str(card_id)][2]
	card_stats["sprite_frame"] = CardStats.card_id_dictionary[str(card_id)][3]
	animated_sprite_2d.frame = card_stats["sprite_frame"]
	print("set")
