extends Node2D
@onready var ui = $UI
@onready var map = $Map
var money
func _ready():
	map.open_shop_interface_signal_two.connect(open_shop)
	GlobalStats.stats_changed.connect(update_stats_main)
	update_stats_main()
func open_shop():
	ui.open_shop()
func update_stats_main():
	money = GlobalStats.stats["money"]
	ui.update_stats_display()
