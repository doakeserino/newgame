class_name hand
extends HBoxContainer


@onready var slot_1 = $Slot1
@onready var slot_2 = $Slot2
@onready var slot_3 = $Slot3
@onready var slot_4 = $Slot4
@onready var slot_5 = $Slot5
@onready var slot_6 = $Slot6

var card_slots = [slot_1, slot_2, slot_3, slot_4, slot_5, slot_6]

func _ready():
	GlobalStats.inventory_changed.connect(add_cards_to_hand)
	for card in GlobalStats.cards:
		add_card(card)
	GlobalStats.card_added.connect(add_card)
	GlobalStats.card_removed.connect(add_cards_to_hand)
	slot_1.card_played_extender.connect(recalculate_cards)
	slot_2.card_played_extender.connect(recalculate_cards)
	slot_3.card_played_extender.connect(recalculate_cards)
	slot_4.card_played_extender.connect(recalculate_cards)
	slot_5.card_played_extender.connect(recalculate_cards)
	slot_6.card_played_extender.connect(recalculate_cards)
	
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
	if slot_1.contents:
		slot_1.contents.queue_free()
	slot_2.taken = false
	if slot_2.contents:
		slot_2.contents.queue_free()
	slot_3.taken = false
	if slot_3.contents:
		slot_3.contents.queue_free()
	slot_4.taken = false
	if slot_4.contents:
		slot_4.contents.queue_free()
	slot_5.taken = false
	if slot_5.contents:
		slot_5.contents.queue_free()
	slot_6.taken = false
	if slot_6.contents:
		slot_6.contents.queue_free()
	for card in GlobalStats.cards:
		add_card(card)
func add_cards_to_hand():
	GlobalStats.cards = []
	if len(GlobalStats.player_inventory) > len(card_slots):
		for slot in range(0, len(card_slots)):
			GlobalStats.cards.append(GlobalStats.player_inventory[slot])
	else:
		for slot in range(0, len(GlobalStats.player_inventory)):
			GlobalStats.cards.append(GlobalStats.player_inventory[slot])
	recalculate_cards()
	
