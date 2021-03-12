extends KinematicBody2D
signal clicked(node)

export var index = 0

func _input_event(_viewport, event, _shape_idx):
	if (event is InputEventMouseButton 
		and event.button_index == BUTTON_LEFT
		and event.is_pressed()):
		emit_signal("clicked", self.index)
