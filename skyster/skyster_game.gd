extends Node2D

const PLANE = preload("uid://bku070q460w15")

const FUEL = preload("uid://0f1gcx3jb381")
const TRUCK = preload("uid://dfsof722hj7b8")

var vehicles = [TRUCK, PLANE]

const DIST_TO_END = 60000
const FUEL_SPAWNS = 5
func _on_skyster_fuel_changed() -> void:
	$CanvasLayer/ProgressBar.value = $Skyster.fuel


func _ready() -> void:
	# fear the fencepost error!
	var dist_between_fuel_spawns = DIST_TO_END / (FUEL_SPAWNS + 1.0)
	for i in range(dist_between_fuel_spawns, DIST_TO_END, dist_between_fuel_spawns):
		var fuel = FUEL.instantiate()
		fuel.global_position = Vector2(i, randf_range(0, 200))
		add_child(fuel)

func _physics_process(delta: float) -> void:
	$Spawners.position.x = $Skyster.position.x + 1500
