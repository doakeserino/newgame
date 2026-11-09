extends BoxContainer

var taken := false
var card_to_add : PackedScene = preload("res://Scenes/card.tscn")
var contents

	
func add_card(card_id : String):
	taken = true
	var stats_array = CardStats.card_id_dictionary[card_id]
	contents = card_to_add.instantiate()
	add_child(contents)
	contents.set_card_stats(stats_array[0], stats_array[1], stats_array[2], stats_array[3])
