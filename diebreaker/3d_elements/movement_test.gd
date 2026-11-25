extends RigidBody3D

func _ready() -> void:
	linear_velocity = Vector3(5, 5, 0)
	angular_velocity = Vector3(1,2,3)

func _physics_process(_delta: float) -> void:
	var colliding_bodies = get_colliding_bodies()
	if colliding_bodies.size() > 0:
		var xx = randf_range(3,-3)*randf_range(0,1)
		var yy = randf_range(3,-3)*randf_range(0,1)
		var zz = randf_range(3,-3)*randf_range(0,1)
		print(Vector3(xx,yy,zz))
		angular_velocity = Vector3(xx,yy,zz)
