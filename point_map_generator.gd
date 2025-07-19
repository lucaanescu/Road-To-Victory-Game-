extends Node2D


var Car_overworld : Node2D
var mapDone := false
var astar := AStar2D.new()
var dictOfPoints : Dictionary = {} #This searches with ID
var dictOfIDs : Dictionary = {} #This searches with points

func _ready():
	randomize()
	Car_overworld = get_parent().get_node("Car_overworld")
