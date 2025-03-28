extends CanvasLayer

func Stats_fade():
	$PanelContainer.visible = false
	$PanelContainer2.visible = true

func Check_stats():
	$PanelContainer.visible = true
	$PanelContainer2.visible = false

func _physics_process(delta):
	get_tree().paused = false
