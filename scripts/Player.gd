extends Node


# Declare member variables here. Examples:
export var Angle1: Color = Color.red
export var Angle2: Color = Color.green
export var Angle3: Color = Color.blue
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var angle1: Sprite = self.get_child(0)
	var angle2: Sprite = self.get_child(1)
	var angle3: Sprite = self.get_child(2)

	angle1.modulate = Angle1
	angle2.modulate = Angle2
	angle3.modulate = Angle3
	
