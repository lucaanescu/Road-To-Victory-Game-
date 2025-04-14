extends Node2D

@onready var event_select_Day_1 = $EventHolderDay_1
@onready var event_select_Rest_1 = $EventHolderNight_1

@onready var player = $Car_overworld

var levels = []
@onready var current_level = $EventHolderDay_1/Start

var lerp_speed = 0.05
var lerp_progress = 0.0
var completed_movement = true
var lerp_threshhold = 0.1

func _ready():
	var new_dialog_0 = Dialogic.start('First_Travel', false)
	
	levels = event_select_Day_1.get_children()
	_update_levels()
	
func _update_levels():
	for level in levels:
		if level.name in EventsData.event_dic:
			if EventsData.event_dic[level.name]["unlocked"] == true:
				load("res://car_overworld.tscn")
			if EventsData.event_dic[level.name]["unlocked"] == false:
				pass
				
func _process(delta):
	var target_level : Node2D
	
	if Input.is_action_pressed("up") and Input.is_action_pressed("right"):
		if current_level.up_right:
			target_level = current_level.up_right
			if Input.is_action_just_pressed("click"):
				print("Im in a level")
				get_tree().change_scene_to_file("res://car_overworld.tscn")
				
	if Input.is_action_pressed("up") and Input.is_action_pressed("left"):
		if current_level.up_left:
			target_level = current_level.up_left
			if Input.is_action_just_pressed("click"):
				await get_tree().create_timer(0.4).timeout
				get_tree().change_scene_to_file("res://car_overworld.tscn")
			
		
	if target_level and target_level.name in EventsData.event_dic and EventsData.event_dic[target_level.name]["unlocked"] and completed_movement:
		completed_movement = false
		print("I'm lerping")
		lerp_progress = 0.0
		while lerp_progress < 1.0:
			lerp_progress += lerp_speed + delta
			lerp_progress.clamp(lerp_progress, 0.0, 1.0)
			player.position = player.position.lerp(target_level.global_position, lerp_progress)
			
			if player.position.distance_to(target_level.global_position) < lerp_threshhold:
				break
				
			await get_tree().create_timer(delta).timeout
		player.position = target_level.global_position
		current_level = target_level
		completed_movement = true
