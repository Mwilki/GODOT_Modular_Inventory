class_name Chest extends Button

export(int) var size = 1
export(String) var inventory_name
export(Array, String) var items

var inventory : Inventory

func _init():
	#inventory module in the cell
	inventory = preload("res://Inventory/Inventory.tscn").instance()

func _ready():
	inventory.size = size
	inventory.inventory_name = inventory_name
	set_items()
	
func set_items():
	for i in items:
		inventory.add_item(ItemManager.get_item(i))


func _on_Chest_pressed():
	SignalManager.emit_signal("inventory_opened", inventory)
