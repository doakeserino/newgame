class_name hand
extends HBoxContainer


@onready var slot_1 = $Slot1
@onready var slot_2 = $Slot2
@onready var slot_3 = $Slot3
@onready var slot_4 = $Slot4
@onready var slot_5 = $Slot5
@onready var slot_6 = $Slot6

var cardslots = [slot_1, slot_2, slot_3, slot_4, slot_5, slot_6]

func _ready():
	for card in GlobalStats.cards:
		add_card(card)
	GlobalStats.card_added.connect(recalculate_cards)
func add_card(card_id):
		if slot_1.taken == false:
			slot_1.add_card(card_id)
		elif slot_2.taken == false:
			slot_2.add_card(card_id)
		elif slot_3.taken == false:
			slot_3.add_card(card_id)
		elif slot_4.taken == false:
			slot_4.add_card(card_id)
		elif slot_5.taken == false:
			slot_5.add_card(card_id)
		elif slot_6.taken == false:
			slot_6.add_card(card_id)
func recalculate_cards():
	slot_1.taken = false
	slot_2.taken = false
	slot_3.taken = false
	slot_4.taken = false
	slot_5.taken = false
	slot_6.taken = false
	for card in GlobalStats.cards:
		add_card(card)
