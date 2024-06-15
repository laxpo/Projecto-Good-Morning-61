extends Label


func _on_interact_ray_cast_interactable_intersected():
	visible = true


func _on_interact_ray_cast_interactable_left():
	visible = false
