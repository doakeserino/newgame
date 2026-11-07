extends Node2D
@onready var ui = $UI
@onready var map = $Map
func _ready():
	map.open_shop_interface_signal_two.connect(open_shop)
func open_shop():
	ui.open_shop()
