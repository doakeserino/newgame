extends Node

signal stats_changed
signal card_added
signal inventory_changed
signal combat_entered_or_left(in_combat)
signal card_removed
var stats = {
	"money" : 100,
	"hp" : 100,
	"energy" : 10,
	"in_combat" : false
	
}
var player_inventory = [] 
# player_inventory only includes card id's
var cards = []

func change_stats(stat_name : String, amount : int):
	if stats[stat_name] is not bool:
		stats[stat_name] += amount
	else:
		stats[stat_name] = not stats[stat_name]
		print("bool change worked")
	if stat_name == "in_combat":
		combat_entered_or_left.emit(stats["in_combat"])
	stats_changed.emit()
func add_card(card_to_add : String):
	player_inventory.append(card_to_add)
	card_added.emit(card_to_add)
	add_cards_to_hand()
func add_cards_to_hand():
	inventory_changed.emit()
	print(player_inventory)
func remove_card(card_to_remove : String):
	player_inventory.erase(card_to_remove)
	inventory_changed.emit()
	card_removed.emit()
func _ready():
	add_cards_to_hand()
	
