extends Node2D

@export var speed : int = 1000
var Click_event : InputEventMouseButton
var tween : Tween
var can_click = true

func _ready() -> void:
	get_tree().paused = false

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("click") && can_click:
		Click_event = event
		tween = create_tween()
		tween.tween_property($Car_overworld,"position",Click_event.position,$Car_overworld.position.distance_to(Click_event.position)/speed)
		tween.finished.connect(_allow_click)
		print("Moving")
		
func _allow_click():
	can_click = true
