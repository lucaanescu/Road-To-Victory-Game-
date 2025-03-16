extends CanvasLayer

@onready var color_Rect = $ColorRect
@onready var animated_fadein = $AnimationPlayer

func _ready():
	color_Rect.visible = true
	animated_fadein.play("Fade_out_in")
	
