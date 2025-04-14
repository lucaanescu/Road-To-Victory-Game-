extends Node

var event_dic = {
	"Start":{
		"unlocked" : true,
		"completed" : false
	}
}

func generate_level(level):
	if level not in event_dic:
		event_dic[level] = {
			"unlocked" : true,
			"completed" : false
		}
		
func generate_level_number(level):
	var level_number = ""
	for character in level:
		if character.is_valid_int():
			level_number += character
	level_number = int(level_number) + 1
	return "Level" + str(level_number)
	
	
