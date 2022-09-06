class_name Resource_Manager extends Node

const STAT_PATH = "res://Items/Data/stats.json"

var fonts = {
	8: preload("res://Fonts/font_8.tres")
}

var colors = {
	"normal" : Color("905c32")
}

var tscn = {
	"splitter" : preload("res://UI/Splitter.tscn")
}

var sprites = {
	"ChestPlate": preload("res://Items/Sprites/ChestPlate.png"),
	"Crystal": preload("res://Items/Sprites/Crystal.png"),
	"Gold": preload("res://Items/Sprites/Gold.png"),
	"Helmet": preload("res://Items/Sprites/Helmet.png"),
	"IronSword": preload("res://Items/Sprites/IronSword.png"),
	"MagicOrb": preload("res://Items/Sprites/MagicOrb.png"),
	"Shield": preload("res://Items/Sprites/Shield.png"),
	"Stone": preload("res://Items/Sprites/Stone.png"),
	"TShirt": preload("res://Items/Sprites/TShirt.png"),
	"Wood": preload("res://Items/Sprites/Wood.png"),
	"WoodenSword": preload("res://Items/Sprites/WoodenSword.png")
}

var stat_info = {
	
}

func _ready():
	var file = File.new()
	file.open(STAT_PATH, File.READ)
	var data = parse_json(file.get_as_text())
	
	for stat in data:
		stat_info[Game_Enums.STATS[stat]] = data[stat]
	
	file.close()
