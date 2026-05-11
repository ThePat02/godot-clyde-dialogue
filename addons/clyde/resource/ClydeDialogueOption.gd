class_name ClydeDialogueOption extends Resource

@export var text: String = ""
@export var speaker: String = ""
@export var id: String = ""
@export var tags: Array[String] = []
@export var visited: bool = false
var has_visibility: bool = false
@export var is_visible: bool = false

func to_dict() -> Dictionary:
	var data = {
		"text": text,
		"speaker": speaker,
		"id": id,
		"tags": tags,
		"visited": visited,
	}
	if has_visibility:
		data.is_visible = is_visible
	return data
