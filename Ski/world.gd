extends Node3D

var tree_load = preload("res://Ski/tree.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	print(GlobalControl.spawn_count)
	
	for i in GlobalControl.spawn_count:
		var tree = tree_load.instantiate()
		add_child(tree)
		
		tree.position.x = randf_range(-10,10)
		tree.position.z = randf_range(-25,25)
		
		
		var tree_size = randf_range(0.75,1.2)
		tree.scale.x=tree_size
		tree.scale.y=tree_size
		tree.scale.z=tree_size
		tree.position.y = (tree.position.z * .577) + (2.3*tree_size)
