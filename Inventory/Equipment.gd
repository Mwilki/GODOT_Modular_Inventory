extends Inventory

export(NodePath) onready var head = get_node(head) as Inventory_Slot
export(NodePath) onready var chest = get_node(chest) as Inventory_Slot
export(NodePath) onready var mainhand = get_node(mainhand) as Inventory_Slot
export(NodePath) onready var offhand = get_node(offhand) as Inventory_Slot

func _ready():
	slots.append(head)
	slots.append(chest)
	slots.append(mainhand)
	slots.append(offhand)
	SignalManager.emit_signal( "inventory_ready", self )

func set_inventory_size( value ):
	size = value
	

