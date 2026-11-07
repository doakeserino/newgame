class_name Shop
extends RigidBody2D

signal open_shop_interface_signal
func interacted_with():
	open_shop_interface_signal.emit()
