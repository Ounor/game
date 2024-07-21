extends Node2D

var camera_value = Vector2()
var position_value = Vector2()

var pressed = false

var viewWidth




# Called when the node enters the scene tree for the first time.
func _ready():
	var viewport_size = get_viewport_rect().size

	viewWidth = get_viewport_rect().size
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if pressed: 
		$camera.position = (camera_value + position_value) - ($camera.get_local_mouse_position())


func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.is_pressed():
			position_value = $camera.get_local_mouse_position()
			camera_value = $camera.position
			pressed = true
		else:
			pressed = false
	
