extends KinematicBody

var vel = Vector3(0, 0, 0)
const SPEED = 5

func _ready():
	pass

func _physics_process(delta):
	if Input.is_action_pressed("ui_left") and Input.is_action_pressed("ui_right"):
		vel.x = 0
	elif Input.is_action_pressed("ui_left"):
		vel.x = -SPEED
	elif Input.is_action_pressed("ui_right"):
		vel.x = SPEED
	else:
		vel.x = lerp(vel.x, 0, 0.1)

	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_down"):
		vel.z = 0
	elif Input.is_action_pressed("ui_up"):
		vel.z = -SPEED
	elif Input.is_action_pressed("ui_down"):
		vel.z = SPEED
	else:
		vel.z = lerp(vel.z, 0, 0.1)

	move_and_slide(vel)
