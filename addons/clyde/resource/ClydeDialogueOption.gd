class_name ClydeDialogueOption extends Resource

@export var text: String = ""
@export var speaker: Variant = null
@export var id: Variant = null
@export var tags: Array = []
@export var visited: bool = false
@export var is_visible: Variant = null

func to_dict() -> Dictionary:
	var data = {
		"text": text,
		"speaker": speaker,
		"id": id,
		"tags": tags,
		"visited": visited,
	}
	if is_visible != null:
		data.is_visible = is_visible
	return data
