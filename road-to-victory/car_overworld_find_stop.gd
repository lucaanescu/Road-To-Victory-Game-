extends Node2D

var Click_event : InputEventMouseButton
var tween : Tween
var can_click = true
var mouse_position = null
var current_mouse_pos = null
var Location_Day_1 : Sprite2D

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("click") && can_click:
		Click_event = event
		mouse_position = $SanJulioMap.get_global_mouse_position()
		Location_Day_1 = $EventHolderDay_1/Event1/Sprite2D
		if mouse_position == Location_Day_1.Collison2D:
			tween = create_tween()
			current_mouse_pos = $EventHolderDay_1/Event1/Sprite2D.get_global_mouse_position()
			tween.tween_property($Car_overworld,"position",current_mouse_pos,1)
			tween.finished.connect(_allow_click)
			print("Moving")
		
func _allow_click():
	can_click = true
