extends Node2D

@onready var shop = $Shop
signal open_shop_interface_signal_two

func _ready():
	shop.open_shop_interface_signal.connect(emit_signal_open_shop)
	
func emit_signal_open_shop():
	open_shop_interface_signal_two.emit()
