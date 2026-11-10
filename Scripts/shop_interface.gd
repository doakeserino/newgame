extends Node2D

signal close_shop_interface_signal
@onready var exit_button = $ExitButton
@onready var shop_panel = $Control/HBoxContainer/ShopPanel
@onready var shop_panel_2 = $Control/HBoxContainer/ShopPanel2
@onready var shop_panel_3 = $Control/HBoxContainer/ShopPanel3

func _ready():
	shop_panel.display_card(0)
	shop_panel_2.display_card(1)
	shop_panel_3.display_card(2)
func _on_exit_button_pressed():
	close_shop_interface_signal.emit()
	
	
