extends Node

func _ready() -> void:
	get_parent().velocity.y = 3000
	get_parent().global_position.y = 140
	
func _physics_process(_delta: float) -> void:
	get_parent().velocity.y = 3000
	if get_parent().is_on_floor():
		get_parent().velocity.y = 0
		queue_free()
