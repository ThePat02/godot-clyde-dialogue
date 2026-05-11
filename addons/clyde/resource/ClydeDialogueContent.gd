class_name ClydeDialogueContent extends Resource

@export var type: String = ""
@export var speaker: Variant = null
@export var id: Variant = null
@export var tags: Array = []
@export var meta: Variant = null

func to_dict() -> Dictionary:
	var data = {
		"type": type,
		"speaker": speaker,
		"id": id,
		"tags": tags,
	}
	if meta != null:
		data.meta = meta
	return data
