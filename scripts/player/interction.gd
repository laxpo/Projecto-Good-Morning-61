extends Node3D

func _physics_process(_delta):
	if $Camera3D/InteractRayCast.is_in_interactable_zone && Input.is_action_just_pressed("interact"):
		var obj = $Camera3D/InteractRayCast.get_collider()
		obj.interact()
