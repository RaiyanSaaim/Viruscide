extends Node3D

func _ready() -> void:
	linear_velocity = Vector3(0, 5, 5)
	angular_velocity = Vector3(1,2,3)

func _physics_process(_delta: float) -> void:
	var colliding_bodies = get_colliding_bodies()
	if colliding_bodies.size() > 0:
		angular_velocity = Vector3(randf_range(3,-3),randf_range(3,-3),randf_range(3,-3))
