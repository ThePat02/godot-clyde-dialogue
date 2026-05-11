class_name ClydeDialogueContent extends Resource

@export var type: String = ""
@export var speaker: String = ""
@export var id: String = ""
@export var tags: Array[String] = []
@export var meta: Dictionary = {}

func to_dict() -> Dictionary:
	var data = {
		"type": type,
		"speaker": speaker,
		"id": id,
		"tags": tags,
	}
	if not meta.is_empty():
		data.meta = meta
	return data
