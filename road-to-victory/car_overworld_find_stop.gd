extends Node2D

var Click_event : InputEventMouseButton
var tween : Tween = null
var can_click = true
var mouse_position = null
var current_mouse_pos = null
var Location_Day_1 = false
var Location_Day_1_2 = false
var Location_Day_2 = false
var Location_Day_2_2 = false
var Location_Day_3 = false
var Location_Day_3_2 = false

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("click") && can_click:
		Click_event = event
		mouse_position = $SanJulioMap.get_global_mouse_position()
		if event.is_action_pressed("click") && Location_Day_1 == true:
			tween = create_tween()
			current_mouse_pos = $EventHolderDay_1/Event1/Sprite2D.get_global_mouse_position()
			tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
			can_click = false
			$Car_overworld/Travel.play()
			tween.finished.connect(_allow_click)
		elif event.is_action_pressed("click") && Location_Day_1_2 == true:
			tween = create_tween()
			current_mouse_pos = $EventHolderDay_1/Event1_2/Sprite2D.get_global_mouse_position()
			tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
			can_click = false
			$Car_overworld/Travel.play()
			tween.finished.connect(_allow_click)
		elif event.is_action_pressed("click") && Location_Day_2 == true:
			tween = create_tween()
			current_mouse_pos = $EventHolderDay_1/Event2/Sprite2D.get_global_mouse_position()
			tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
			can_click = false
			$Car_overworld/Travel.play()
			tween.finished.connect(_allow_click)
		elif event.is_action_pressed("click") && Location_Day_2_2 == true:
			tween = create_tween()
			current_mouse_pos = $EventHolderDay_1/Event2_2/Sprite2D.get_global_mouse_position()
			tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
			can_click = false
			$Car_overworld/Travel.play()
			tween.finished.connect(_allow_click)
		
func _allow_click():
	can_click = true
	
func _on_button_mouse_entered() -> void:
	Location_Day_1 = true
	Location_Day_1_2 = true
	Location_Day_2 = true
	Location_Day_2_2 = true
	Location_Day_3 = true
	Location_Day_3_2 = true
	
func _on_button_mouse_exited() -> void:
	Location_Day_1 = false
	Location_Day_1_2 = false
	Location_Day_2 = false
	Location_Day_2_2 = false
	Location_Day_3 = false
	Location_Day_3_2 = false
