class_name ClydeDialogueOptions extends ClydeDialogueContent

@export var text: String = ""
@export var options: Array[ClydeDialogueOption] = []

func _init():
	type = "options"

func to_dict() -> Dictionary:
	var data = super.to_dict()
	data.text = text
	data.options = options.map(func (option): return option.to_dict() if option is ClydeDialogueOption else option)
	return data
