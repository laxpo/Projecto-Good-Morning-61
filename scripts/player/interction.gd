extends Node3D

func _physics_process(delta):
	if $RayCast3D.is_colliding():
		var obj = $RayCast3D.get_collider()
		if obj.is_in_group("interactable"):
			obj.interact()
