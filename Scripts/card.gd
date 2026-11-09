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
	
