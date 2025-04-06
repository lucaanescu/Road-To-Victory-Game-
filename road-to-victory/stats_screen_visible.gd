extends CanvasLayer

@onready var Button_attributes: Button = $PanelContainer2/Button
@onready var attributes: Button = $PanelContainer/Button
var Die_results = load("res://dice_roll.tscn")
var results:int

func _ready():
	Dialogic.signal_event.connect(_on_dialogic_signal)

func Stats_fade():
	$PanelContainer.visible = false
	$PanelContainer2.visible = true

func Check_stats():
	$PanelContainer.visible = true
	$PanelContainer2.visible = false

func _on_button_mouse_entered() -> void:
	get_tree().paused = false
	Check_stats()

func _on_panel_container_mouse_exited() -> void:
	Stats_fade()

func die_result(roll_value) -> void:
	results = roll_value

func _on_dialogic_signal(argument:String):
	if argument == "Changed_attribute":
		$PanelContainer/VBoxContainer/Might.text = "Might: "+str(Dialogic.VAR.Might)
		$PanelContainer/VBoxContainer/Flexibility.text = "Flexibility: "+str(Dialogic.VAR.Flexibility)
		$PanelContainer/VBoxContainer/Endurance.text = "Endurance: "+str(Dialogic.VAR.Endurance)
		$PanelContainer/VBoxContainer/Charm.text = "Charm: "+str(Dialogic.VAR.Charm)
		$PanelContainer/VBoxContainer/Mind.text = "Mind: "+str(Dialogic.VAR.Mind)
		$PanelContainer/VBoxContainer/Spirit.text = "Spirit: "+str(Dialogic.VAR.Spirit)
		$PanelContainer/VBoxContainer/Money.text = "Money: "+str(Dialogic.VAR.Money)
	if argument == "FlexibilityCall":
		await get_tree().create_timer(1.8).timeout
		Dialogic.VAR.Flexibility_result = Dialogic.VAR.Flexibility + results
		print(results)
		
	
func _on_v_box_container_mouse_exited() -> void:
	Stats_fade()
	
	
func _on_might_mouse_exited() -> void:
	Stats_fade()
	
	
func _on_flexibility_mouse_exited() -> void:
	Stats_fade()
	
	
func _on_endurance_mouse_exited() -> void:
	Stats_fade()
	
	
func _on_charm_mouse_exited() -> void:
	Stats_fade()
	
	
func _on_mind_mouse_exited() -> void:
	Stats_fade()
	
	
func _on_spirit_mouse_exited() -> void:
	Stats_fade()
	
	
func _on_money_mouse_exited() -> void:
	Stats_fade()
	
	
