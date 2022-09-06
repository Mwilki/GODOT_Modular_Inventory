extends Chest

export(int) var number_of_items

func set_items():
	for num in number_of_items:
		inventory.add_item(ItemManager.get_item(items[randi() % items.size()]))
