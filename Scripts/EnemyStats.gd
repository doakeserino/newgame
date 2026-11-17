extends Node
signal enemy_died
signal enemy_stats_changed
var enemy : PackedScene 
var enemy_stats = {
	"hp" : null,
	"energy" : null,
}
var enemy_cards = []
var enemies_base_stats = {
	"0" : [10, 10, 25],
}
# enemies stat names = [hp, energy, base_reward]

func change_enemy_stats(stat_name : String, amount : int):
	enemy_stats[stat_name] += amount
	enemy_stats_changed.emit()
	if stat_name == "hp" and enemy_stats[stat_name] <= 0:
		print("og")
		enemy_died.emit()
	
