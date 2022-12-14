extends Dragable_Control

export(NodePath) onready var inventory_container = get_node( inventory_container ) as Control

var current_inventories : Array = []

func _ready():
	#signal name, target, method
	SignalManager.connect("inventory_opened", self, "_on_inventory_opened")

func close():
	for i in current_inventories:
		inventory_container.remove_child( i )
	
	current_inventories = []
	hide()

func _on_inventory_opened( inventory : Inventory ):
	if current_inventories.size() == 0:
		rect_size.y = 20
	
	#chest w/ specified inventory is already opened.
	if current_inventories.has( inventory ):
		return
	
	#add new inventory to container
	inventory_container.add_child(inventory)
	current_inventories.append( inventory )
	rect_size.y += inventory.rect_size.y + inventory_container.get_constant( "separation" )
	show()


func _on_CloseButton_pressed():
	close()
