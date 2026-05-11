class_name ClydeDialogueLine extends ClydeDialogueContent

@export var text: String = ""

func _init():
	type = "line"

func to_dict() -> Dictionary:
	var data = super.to_dict()
	data.text = text
	return data
