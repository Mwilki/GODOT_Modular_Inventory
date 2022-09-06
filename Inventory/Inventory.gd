class_name Inventory extends NinePatchRect

var inventory_slot_res = preload("res://Inventory/Inventory_Slot.tscn")

export(String) var inventory_name
export(int) var size = 0 setget set_inventory_size

export(NodePath) onready var title = get_node( title ) as Label
export(NodePath) onready var slot_container = get_node( slot_container ) as Control

var slots : Array = []


func _ready():
	for s in slots:
		slot_container.add_child( s )
	
	set_title()
	SignalManager.emit_signal( "inventory_ready", self )

func set_title():
	title.text = "- " + inventory_name + " -"

func set_inventory_size( value ):
	size = value
	rect_min_size.y = 40 + ( ceil( size / 5.0 ) - 1 ) * 22
	
	for s in size:
		var new_slot = inventory_slot_res.instance()
		slots.append( new_slot )


func add_item( item ):
	for s in slots:
		if not s.item:
			s.set_item( item )
			return

#func _ready():
#	for s in slots: 
#		slot_container.add_child(s)
#		title.text = "- " + inventory_name + " -"
#		SignalManager.emit_signal("inventory_ready", self)
#
#func set_inventory_size( value ):
#	size = value # size = slots
#	#size = 6    6/5 = 1.2.  ceil(1.2) = 2.  2-1 = 1
#	# 5 slots per row
#	rect_min_size.y = 72 + (ceil (size / 5.0) - 1 ) * 37  
#	#we figured out that each row is 37px down from the previous
#
#	for s in size:
#		var new_slot = inventory_slot_res.instance()
#		slots.append(new_slot)
#
#func add_item( item ):
#	for s in slots:
#		if not s.item:
#			s.set_item(item)
#			return
