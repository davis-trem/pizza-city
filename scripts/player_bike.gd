extends VehicleBody3D

@onready var animation_player: AnimationPlayer = $BikeModel/AnimationPlayer
@onready var camera_pivot: Node3D = $CameraPivot


@export var MAX_STEER := 0.9
@export var ENGINE_POWER := 300

func _physics_process(delta: float) -> void:
	steering = move_toward(
		steering,
		Input.get_axis('ui_right', 'ui_left') * MAX_STEER,
		delta * 10
	)
	engine_force = Input.get_axis('ui_down', 'ui_up') * ENGINE_POWER
	
	if engine_force > 0:
		animation_player.play('M_rig_Action_S')
	elif  engine_force < 0:
		animation_player.play_backwards('M_rig_Action_S')
	
	camera_pivot.global_position = camera_pivot.global_position.lerp(global_position, delta * 20)
	camera_pivot.transform = camera_pivot.transform.interpolate_with(transform, delta * 5)
	camera_pivot.rotation.z = 0
	camera_pivot.rotation.x = 0
