extends Node

signal stats_changed
signal card_added
signal inventory_changed
var stats = {
	"money" : 100,
	"hp" : 100,
	
}
var player_inventory = ["0"] 
# player_inventory only includes card id's
var cards = []

func change_stats(stat_name : String, amount : int):
	stats[stat_name] += amount
	stats_changed.emit()
func add_card(card_to_add : String):
	player_inventory.append(card_to_add)
	cards.append(card_to_add)
	card_added.emit()
	add_cards_to_hand()
func add_cards_to_hand():
	inventory_changed.emit()
	print(player_inventory)
	
func _ready():
	add_cards_to_hand()
# see if length of player inv is greater than number of slots, if it is than just add cards from range of 0 to length of player inv
