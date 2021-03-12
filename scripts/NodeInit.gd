extends Node2D

const COLUMNS: float = 10.0
const ROWS: float = 10.0
const TRIANGLE_SIDE: float = 50.0
const MARGIN_OFFSET: int = 10

const ROW_STEP: float = sqrt( pow(TRIANGLE_SIDE, 2) - pow(TRIANGLE_SIDE/2, 2))

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _draw():
	for x in range(COLUMNS):
		for y in range(ROWS):
			draw_polyline(TriangleVector(x, y), 
					Color(255, 255, 255, 1))
	draw_rect(Rect2(
		Vector2(MARGIN_OFFSET,MARGIN_OFFSET),
		Vector2((COLUMNS*(TRIANGLE_SIDE))+(TRIANGLE_SIDE/2),ROWS*ROW_STEP)),
		"#0000FF", 
		false)
		
func TriangleVector(x: float, y: float):
	if fmod(y, 2.0) == 0.0:
		return [
			Vector2(MARGIN_OFFSET+x*TRIANGLE_SIDE,MARGIN_OFFSET+y*ROW_STEP),
			Vector2(MARGIN_OFFSET+x*TRIANGLE_SIDE+TRIANGLE_SIDE,MARGIN_OFFSET+y*ROW_STEP),
			Vector2(MARGIN_OFFSET+x*TRIANGLE_SIDE+(TRIANGLE_SIDE/2),MARGIN_OFFSET+y*ROW_STEP+ROW_STEP),
			Vector2(MARGIN_OFFSET+x*TRIANGLE_SIDE,MARGIN_OFFSET+y*ROW_STEP)
			]
	else:
		return [
			Vector2(MARGIN_OFFSET+x*TRIANGLE_SIDE+(TRIANGLE_SIDE/2),MARGIN_OFFSET+y*ROW_STEP),
			Vector2(MARGIN_OFFSET+x*TRIANGLE_SIDE+TRIANGLE_SIDE+(TRIANGLE_SIDE/2),MARGIN_OFFSET+y*ROW_STEP),
			Vector2(MARGIN_OFFSET+x*TRIANGLE_SIDE+(TRIANGLE_SIDE/2)+(TRIANGLE_SIDE/2),MARGIN_OFFSET+y*ROW_STEP+ROW_STEP),
			Vector2(MARGIN_OFFSET+x*TRIANGLE_SIDE+(TRIANGLE_SIDE/2),MARGIN_OFFSET+y*ROW_STEP)
		]
