extends RayCast3D

signal interactable_intersected
signal interactable_left

@export var is_in_interactable_zone = false

func emit_interactable_intersection():
	if !is_colliding():
		if is_in_interactable_zone:
			interactable_left.emit()
			is_in_interactable_zone = false
		return
	var obj = get_collider()
	if obj.is_in_group("interactable") && !is_in_interactable_zone:
		interactable_intersected.emit()
		is_in_interactable_zone = true

func _physics_process(_delta):
	emit_interactable_intersection()
