class_name base_card
extends Node2D

var card_stats = {
	"cardid" : "0",
	"element" : null,
	"damage" : 10,
	"defense" : 10
}

func set_card_stats(element : String, damage : int, defense : int):
	card_stats["element"] = element
	card_stats["damage"] = damage
	card_stats["defense"] = defense
