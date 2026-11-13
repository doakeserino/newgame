extends Node

var enemy : PackedScene 
var enemy_stats = {
	"hp" : null,
	"energy" : null,
}
var enemy_cards = []
var enemies_base_stats = {
	"0" : [100, 10],
}
# enemies stat names = [hp, energy]
