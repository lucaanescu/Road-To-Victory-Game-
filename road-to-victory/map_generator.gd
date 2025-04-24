class_name MapGenerator
extends Node

const X_Dist := 30
const Y_Dist := 25
const PLACEMENT_RANDOMNESS := 5
const FLOORS := 15
const MAP_WIDTH := 7
const PATHS := 6
const MONSTER_ROOM_WEIGHT := 10
const SHOP_ROOM_WEIGHT := 2.5
const REST_ROOM_WEIGHT := 4.0

var random_room_type_weights = {
	Room.Type.DAY_EVENT : 0.0,
	Room.Type.REST_EVENT : 0.0,
	Room.Type.TOURNAMENT : 0.0
}

var random_room_type_total_weights := 0
var map_data: Array[Array]

func _ready() -> void:
	_generate_map()

func _generate_map() -> Array[Array]:
	map_data = _get_initial_grid()
	
	var i := 0
	for floors in map_data:
		print("floors %s: %s" % [i, floors])
		i += 1
	
	return []

func _get_initial_grid() -> Array[Array]:
	var result: Array[Array] = []
		
	for i in FLOORS:
		var adjacent_rooms: Array[Room] = []
		
		for j in MAP_WIDTH:
			var current_room := Room.new()
			var offset := Vector2(randf(), randf()) * PLACEMENT_RANDOMNESS
			current_room.position = Vector2(j * X_Dist, i * -Y_Dist) + offset
			current_room.row = i
			current_room.column = j
			current_room.next_rooms = []
			
			if i == FLOORS - 1:
				current_room.position.y = (i + 1) * -Y_Dist
				
			adjacent_rooms.append(current_room)
			
		result.append(adjacent_rooms)
	
	return result
