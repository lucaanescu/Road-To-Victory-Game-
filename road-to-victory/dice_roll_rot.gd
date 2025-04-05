extends AnimatedSprite2D

var rot_speed = 15
var Rand = RandomNumberGenerator.new()
var Vector = Vector2(1,0)

func choose(array):
	array.shuffle()
	return array.front()

func _on_dialogic_signal(argument:String):
	if argument == "RollDice":
		self.visible = true
		var randX = Rand.randf_range(-5,5)
		var randY = Rand.randf_range(-5,5)
		var dir = Vector2(randX, randY)
		#parent.velocity = dir * rot_speed
	
		dir = choose([Vector2.RIGHT, Vector2.UP, Vector2.LEFT, Vector2.DOWN])
		print (dir)
		#random direction spinner still needs adjustments
