class_name Room
extends Resource

enum Type {DAY_EVENT, REST_EVENT, TOURNAMENT}

@export var type: Type
@export var row: int
@export var column: int
@export var position: Vector2
@export var next_rooms: Array[Room]
@export var selected := false

func _to_String() -> String:
	return "%s (%s)" % [column, Type.keys()[type][0]]
