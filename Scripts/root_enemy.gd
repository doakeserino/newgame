class_name root_enemy
extends RigidBody2D

var enemy_id : int 
func _ready():
	EnemyStats.enemy_stats["hp"] = EnemyStats.enemies_base_stats[str(enemy_id)][0]
	EnemyStats.enemy_stats["energy"] = EnemyStats.enemies_base_stats[str(enemy_id)][1]
