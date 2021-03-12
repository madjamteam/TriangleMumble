extends Node

const Angle = preload("res://scripts/Angle.gd")


export var Angle1: Color = Color.red
export var Angle2: Color = Color.green
export var Angle3: Color = Color.blue

func _ready():
	var colors = [Angle1, Angle2, Angle3]
	var angles = self.get_children()

	for i in range(3):
		angles[i].modulate = colors[i]
		angles[i].get_child(0).connect("clicked", self, "handle_click_handle")

func handle_click_handle(p):
	print(p)
