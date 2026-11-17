class_name root_enemy
extends RigidBody2D

var enemy_id : int 
func _ready():
	EnemyStats.enemy_stats["hp"] = EnemyStats.enemies_base_stats[str(enemy_id)][0]
	EnemyStats.enemy_stats["energy"] = EnemyStats.enemies_base_stats[str(enemy_id)][1]
	EnemyStats.enemy_died.connect(die)
func interacted_with():
	GlobalStats.change_stats("in_combat", 1)
func die():
	if GlobalStats.stats["in_combat"]:
		GlobalStats.change_stats("in_combat", 1)
	GlobalStats.change_stats("money", EnemyStats.enemies_base_stats["0"][2])
	print("pawel")
	queue_free()
