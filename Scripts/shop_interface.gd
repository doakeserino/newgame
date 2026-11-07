extends Node2D

signal close_shop_interface_signal
@onready var exit_button = $ExitButton



func _on_exit_button_pressed():
	close_shop_interface_signal.emit()
