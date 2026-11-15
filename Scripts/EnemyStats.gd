extends Node

signal enemy_stats_changed
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

func change_enemy_stats(stat_name : String, amount : int):
	enemy_stats[stat_name] += amount
	enemy_stats_changed.emit()
	
