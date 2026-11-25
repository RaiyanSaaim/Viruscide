extends Area2D
@export var player: CharacterBody2D
@export var vehicles: Array
@export var shape: RectangleShape2D

func _ready() -> void:
	$CollisionShape2D.shape = shape

func _physics_process(delta: float) -> void:
	if $Cooldown.is_stopped() and not has_overlapping_bodies():
		$Cooldown.start()
		print(get_overlapping_bodies())
		var vehicle = vehicles.pick_random().instantiate()
		vehicle.global_position = Vector2(global_position.x,  global_position.y + randf_range(shape.size.y / -4, shape.size.y / 4))
		get_tree().current_scene.add_child(vehicle)
