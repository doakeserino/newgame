extends Node2D

@onready var enemy_stats_label = $EnemyStatsLabel

func _ready(): 
	update_label()
	GlobalStats.combat_entered_or_left.connect(enter_or_leave_combat)
	EnemyStats.enemy_stats_changed.connect(update_label)
func update_label():
	enemy_stats_label.text = ""
	for stat in EnemyStats.enemy_stats:
		enemy_stats_label.text += stat.capitalize() + ": " + str(EnemyStats.enemy_stats[stat]) + "\n"
func enter_or_leave_combat(should_enter_combat : bool):
	if should_enter_combat:
		visible = true
		print("should enter")
	else: 
		visible = false
		print("shouldnt enter")
