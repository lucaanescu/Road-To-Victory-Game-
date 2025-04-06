extends Node2D

func _ready():
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _on_dialogic_signal(argument:String):
	
	if argument == "RollDice":
		var scene = load("res://dice_roll.tscn")
		var dice = scene.instantiate()
		add_child(dice)
		print("im spawning dice")
