extends CanvasLayer

@onready var color_Rect = $ColorRect
@onready var animated_fadein = $AnimationPlayer

func _ready():
	#opening fadein
	color_Rect.visible = true
	#$Stats.visible = false
	animated_fadein.play("Fade_out_in")
	
	#timer that starts the dialogue after the opening
	await get_tree().create_timer(4.2).timeout
	
	#Starts the first dialogue of the game
	var new_dialog_0 = Dialogic.start('Opening_Scene_Real', false)
	add_child(new_dialog_0)
