extends Sprite2D

var roll_value = 0
signal die_result(roll_value)

func _ready():
	
	$AnimationPlayer.play("Roll")
	
	await get_tree().create_timer(1.8).timeout
	
	randomize()
	roll_value = int(randf_range(1,7))
	print(roll_value)

	if roll_value == 1:
		self.set_frame(6)
	if roll_value == 2:
		self.set_frame(7)
	if roll_value == 3:
		self.set_frame(8)
	if roll_value == 4:
		self.set_frame(9)
	if roll_value == 5:
		self.set_frame(10)
	if roll_value == 6:
		self.set_frame(11)

	emit_signal("die_result",roll_value)

	await get_tree().create_timer(3.0).timeout
	
	self.queue_free()
