extends Node2D

var marg: float

func _ready() -> void:
	marg = $Location.global_position.distance_squared_to(global_position)
