class_name MapGenerator
extends Node2D

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

var random_room_type_total_weights := 0.0
var map_data: Array[Array]
