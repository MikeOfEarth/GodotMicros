extends RigidBody3D

@export var move_speed : float = 3.0
func _physics_process(delta):
	
	if Input.is_key_pressed(KEY_LEFT):
		linear_velocity.x = -move_speed
	
	if Input.is_key_pressed(KEY_RIGHT):
		linear_velocity.x = move_speed


func _on_body_entered(body):
	if body.is_in_group("Tree"):
		GlobalControl.spawn_count=3
		move_speed=3
		get_tree().reload_current_scene()
	if body.is_in_group("Finish"):
		move_speed+=0.2
		GlobalControl.tree_adder()
		get_tree().reload_current_scene()
