extends RigidBody2D


var hit_force : float = 50.0

func _process(delta):
	rotation_control(delta)
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		var dir = global_position.direction_to(get_global_mouse_position())
		apply_impulse(dir*hit_force)
		
func rotation_control(delta)->void:
	if Input.is_action_pressed("turn_right"):
		rotation += 10*delta
	if Input.is_action_pressed("turn_left"):
		rotation -= 10*delta
		

