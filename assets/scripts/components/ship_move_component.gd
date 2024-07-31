extends Node

func get_horizontal_movement_input() -> float:
	return Input.get_axis("left", "right")

func get_vertical_movement_input() -> float:
	return Input.get_axis("up", "down")

func get_boost_input() -> bool:
	return Input.is_action_just_pressed("boost")
