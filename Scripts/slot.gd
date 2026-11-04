extends BoxContainer

var taken := false
var card_to_add : PackedScene 
var contents
func _ready():
	contents = card_to_add.instantiate()
	add_child(contents)
