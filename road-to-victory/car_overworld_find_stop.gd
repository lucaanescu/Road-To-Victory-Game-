extends Node2D

#the many variables that decide at what checkpoint the player is at.
var Click_event : InputEventMouseButton
var tween : Tween = null
var Day_cycle = true
var can_click = true
var Final_day = false
var mouse_position = null
var current_mouse_pos = null
var Location_Day_1 = false
var Location_Day_1_2 = false
var Location_Day_2 = false
var Location_Day_2_2 = false
var Location_Day_3 = false
var Location_Day_3_2 = false
var Location_Night_1 = false
var Location_Night_1_2 = false
var Location_Night_2 = false
var Location_Night_2_2 = false
var Location_Night_3 = false
var Location_Night_3_2 = false
var Location_final = false

func _input(event: InputEvent) -> void:
	
#If the player click they move to the target location.
	if event.is_action_pressed("click") && can_click:
		Click_event = event
		mouse_position = $SanJulioMap.get_global_mouse_position()
		
#Checks the player's avaliability of location and if the player is hovering the location or not.
#just day and final event here
		
		if Day_cycle == true:
			if event.is_action_pressed("click") && Location_Day_1 == true:
				tween = create_tween()
				current_mouse_pos = $EventHolderDay_1/Event1/Sprite2D.get_global_mouse_position()
				tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
				can_click = false
				$Car_overworld/Travel.play()
				tween.finished.connect(_allow_click)
				Day_cycle = false
				
			elif event.is_action_pressed("click") && Location_Day_1_2 == true:
				tween = create_tween()
				current_mouse_pos = $EventHolderDay_1/Event1_2/Sprite2D.get_global_mouse_position()
				tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
				can_click = false
				$Car_overworld/Travel.play()
				tween.finished.connect(_allow_click)
				Day_cycle = false
				
			elif event.is_action_pressed("click") && Location_Day_2 == true:
				tween = create_tween()
				current_mouse_pos = $EventHolderDay_1/Event2/Sprite2D.get_global_mouse_position()
				tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
				can_click = false
				$Car_overworld/Travel.play()
				tween.finished.connect(_allow_click)
				Day_cycle = false
				
			elif event.is_action_pressed("click") && Location_Day_2_2 == true:
				tween = create_tween()
				current_mouse_pos = $EventHolderDay_1/Event2_2/Sprite2D.get_global_mouse_position()
				tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
				can_click = false
				$Car_overworld/Travel.play()
				tween.finished.connect(_allow_click)
				Day_cycle = false
				
			elif event.is_action_pressed("click") && Location_Day_3 == true:
				tween = create_tween()
				current_mouse_pos = $EventHolderDay_1/Event3/Sprite2D.get_global_mouse_position()
				tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
				can_click = false
				$Car_overworld/Travel.play()
				tween.finished.connect(_allow_click)
				Day_cycle = false
				
			elif event.is_action_pressed("click") && Location_Day_3_2 == true:
				tween = create_tween()
				current_mouse_pos = $EventHolderDay_1/Event3_2/Sprite2D.get_global_mouse_position()
				tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
				can_click = false
				$Car_overworld/Travel.play()
				tween.finished.connect(_allow_click)
				Day_cycle = false
				
#The final check point
			elif event.is_action_pressed("click") && Location_final == true:
				tween = create_tween()
				current_mouse_pos = $Final/Sprite2D.get_global_mouse_position()
				tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
				can_click = false
				$Car_overworld/Travel.play()
				tween.finished.connect(_allow_click)
				
#Splits the events which you can travel to either day events or night events.
			
		if Day_cycle == false:
			if event.is_action_pressed("click") && Location_Night_1 == true:
				tween = create_tween()
				current_mouse_pos = $EventHolderNight_1/Event1/Sprite2D.get_global_mouse_position()
				tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
				can_click = false
				$Car_overworld/Travel.play()
				tween.finished.connect(_allow_click)
				Day_cycle = true

			elif event.is_action_pressed("click") && Location_Night_1_2 == true:
				tween = create_tween()
				current_mouse_pos = $EventHolderNight_1/Event1_2/Sprite2D.get_global_mouse_position()
				tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
				can_click = false
				$Car_overworld/Travel.play()
				tween.finished.connect(_allow_click)
				Day_cycle = true
				
			elif event.is_action_pressed("click") && Location_Night_2 == true:
				tween = create_tween()
				current_mouse_pos = $EventHolderDay_1/Event2/Sprite2D.get_global_mouse_position()
				tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
				can_click = false
				$Car_overworld/Travel.play()
				tween.finished.connect(_allow_click)
				Day_cycle = true
				
			elif event.is_action_pressed("click") && Location_Night_2_2 == true:
				tween = create_tween()
				current_mouse_pos = $EventHolderNight_1/Event2_2/Sprite2D.get_global_mouse_position()
				tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
				can_click = false
				$Car_overworld/Travel.play()
				tween.finished.connect(_allow_click)
				Day_cycle = true
				
			elif event.is_action_pressed("click") && Location_Night_3 == true:
				tween = create_tween()
				current_mouse_pos = $EventHolderNight_1/Event3/Sprite2D.get_global_mouse_position()
				tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
				can_click = false
				$Car_overworld/Travel.play()
				tween.finished.connect(_allow_click)
				Day_cycle = true
				
			elif event.is_action_pressed("click") && Location_Night_3_2 == true:
				tween = create_tween()
				current_mouse_pos = $EventHolderNight_1/Event3_2/Sprite2D.get_global_mouse_position()
				tween.tween_property($Car_overworld,"position",current_mouse_pos,5)
				can_click = false
				$Car_overworld/Travel.play()
				tween.finished.connect(_allow_click)
				Day_cycle = true
	
#Function that checks if the player is alowed to click again and sets the time to day or night
func _allow_click():
	can_click = true
	if Day_cycle == false:
		$Night_Filter.visible = true
	elif Day_cycle == true:
		$Night_Filter.visible = false
	
#Functions that signal if the mouse is the location and if the mouse exited
func _on_button_mouse_entered() -> void:
	if Day_cycle == true:
		
		Location_Day_1 = true
		Location_Day_1_2 = true
		Location_Day_2 = true
		Location_Day_2_2 = true
		Location_Day_3 = true
		Location_Day_3_2 = true
		
	elif Day_cycle == false: 
		
		Location_Night_1 = true
		Location_Night_1_2 = true
		Location_Night_2 = true
		Location_Night_2_2 = true
		Location_Night_3 = true
		Location_Night_3_2 = true
		Location_final = true
	
func _on_button_mouse_exited() -> void:
		
	Location_Day_1 = false
	Location_Day_1_2 = false
	Location_Day_2 = false
	Location_Day_2_2 = false
	Location_Day_3 = false
	Location_Day_3_2 = false
	Location_Night_1 = false
	Location_Night_1_2 = false
	Location_Night_2 = false
	Location_Night_2_2 = false
	Location_Night_3 = false
	Location_Night_3_2 = false
	Location_final = false
