extends Node2D

@onready var enemy_stats_label = $EnemyStatsLabel

func _ready(): 
	update_label()
	GlobalStats.combat_entered_or_left.connect(enter_or_leave_combat)
func update_label():
	for stat in EnemyStats.enemy_stats:
		enemy_stats_label.text += stat.capitalize() + ": " + str(EnemyStats.enemy_stats[stat]) + "\n"
func enter_or_leave_combat(should_enter_combat):
	if should_enter_combat == true:
		visible = true
	else: 
		visible = false
