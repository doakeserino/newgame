extends Node2D

@onready var cards_hand = $CardsHand
@onready var shop_interface = $ShopInterface

func _ready():
	shop_interface.visible = false
	shop_interface.close_shop_interface_signal.connect(close_shop)
func _unhandled_input(_event):
	if Input.is_action_just_pressed("hide_card_overlay") and cards_hand.visible == true:
		cards_hand.visible = false
	elif Input.is_action_just_pressed("hide_card_overlay") and cards_hand.visible == false:
		cards_hand.visible = true
	
func open_shop():
	shop_interface.visible = true
func close_shop():
	shop_interface.visible = false
