extends Node2D

@onready var cards_hand = $CardsHand

func _unhandled_input(_event):
	if Input.is_action_just_pressed("hide_card_overlay") and cards_hand.visible == true:
		cards_hand.visible = false
	elif Input.is_action_just_pressed("hide_card_overlay") and cards_hand.visible == false:
		cards_hand.visible = true
	
