extends Node

#Dont think this works so ill just load it the old fashioned way
var scene_text_file = "res://Json dialogue/First_Chat.json"

var scene_text = {}
var selected_text = []
var in_progress = false

var json = JSON.new()

@onready var background = self
@onready var text_label = $MarginContainer/MarginContainer/HBoxContainer/Dialogue

func _ready():
	$AnimationPlayer.play("RESET")
	background.visible = false
	scene_text = load_scene_text()
	#Text.connect("display_dialog", on_display_dialog)
	
func load_scene_text():
	if FileAccess.file_exists(scene_text_file):
		var json_acc = FileAccess.open(scene_text_file, FileAccess.READ)
		if json.parse(json_acc.get_as_text()) != OK:
			print("unable to parse json")
		return json.data
		
func show_text():
	text_label.text = selected_text.pop_front()
	
		
func next_line():
	if selected_text.size() > 0:
		show_text()
	else:
		finish()

func finish():
	$AnimationPlayer.play_backwards("Fade")
	text_label.text = ""
	background.visible = false
	in_progress = false
	get_tree().paused = false

func _process(delta):
	if in_progress and Input.is_action_just_pressed("Use"):
		next_line()

func on_display_dialog(text_key):
	$AnimationPlayer.play("Fade")
	get_tree().paused = true
	background.visible = true
	in_progress = true
	selected_text = scene_text[text_key].duplicate()
