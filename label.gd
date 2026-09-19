extends Label


@onready var label = $Label

func _ready():
	EventController.connect("coin_collected", on_event_coin_collected)
	
func on_event_coin_collected(value: int) -> void:
	label.txt = str(value)
