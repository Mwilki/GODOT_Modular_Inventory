extends Dragable_Control

#get reference to child node
export(NodePath) onready var slider = get_node(slider) as HSlider
export( NodePath ) onready var fullscreen_check = get_node( fullscreen_check ) as CheckBox


func _ready():
	fullscreen_check.pressed = SettingsManager.fullscreen


func _on_CloseButton_pressed():
	hide()


func _on_HSlider_gui_input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and not event.pressed:
		#left click, on release
		SettingsManager.scale = slider.value

func _on_CheckBox_toggled( button_pressed ):
	SettingsManager.fullscreen = button_pressed
