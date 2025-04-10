extends Sprite2D

var roll_value:int
var roll_value2:int
signal die_result(roll_value)


func _ready():
	
	Dialogic.signal_event.connect(_on_dialogic_signal)
	
	$AnimationPlayer.play("Roll")
	
	await get_tree().create_timer(1.8).timeout
	
	#this changes the face of the dice
	randomize()
	roll_value = int(randf_range(1,7))

	match roll_value:
		1:
			self.set_frame(6)

		2:
			self.set_frame(7)

		3:
			self.set_frame(8)
			
		4:
			self.set_frame(9)

		5:
			self.set_frame(10)

		6:
			self.set_frame(11)
	

	emit_signal("die_result",roll_value)

	await get_tree().create_timer(3.0).timeout
	
	self.queue_free()

func _on_dialogic_signal(argument:String):
	if argument == "FlexibilityCall":
		await get_tree().create_timer(1.8).timeout
		Dialogic.VAR.Flexibility_result = Dialogic.VAR.Flexibility + roll_value
		print(roll_value)
		
	if argument == "EnduranceCall":
		await get_tree().create_timer(1.8).timeout
		Dialogic.VAR.Endurance_result = Dialogic.VAR.Endurance + roll_value
		print(roll_value)
		
	if argument == "CharmCall":
		await get_tree().create_timer(1.8).timeout
		Dialogic.VAR.Charm_result = Dialogic.VAR.Charm + roll_value
		print(roll_value)
