class_name Split_Stack extends Scale_Control

export(NodePath) onready var quantity_slider = get_node( quantity_slider ) as HSlider
export(NodePath) onready var original_quantity = get_node( original_quantity ) as Label
export(NodePath) onready var new_quantity = get_node( new_quantity ) as Label

var original_qty
var new_qty
var inventory_slot

func _ready():
	pass

#https://www.youtube.com/watch?v=9Z5zCgBVyR0&list=PLcZp9zrMgnmOOQXevC-2CfH67QP3mB4wv&index=3&ab_channel=Calame321
