extends Node

signal stats_changed
signal card_added
var stats = {
	"money" : 100
}
var cards = ["0", "1", "2"]

func change_stats(stat_name : String, amount : int):
	stats[stat_name] += amount
	stats_changed.emit()
func add_card(card_to_add : String):
	cards.append(card_to_add)
	card_added.emit()
