extends Area3D

@export var opened = false

func interact():
	if !opened:
		$"../Animation".play("open")
	else:
		$"../Animation".play("close")
