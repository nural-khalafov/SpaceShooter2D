class_name State extends Node

@export
var default_speed: float = 3500.0

var current_speed: float

@export
var boosting_rate: float = 3

@onready 
var move_component

var parent: CharacterBody2D

func enter() -> void:
	pass

func exit() -> void:
	pass

func process_input(event: InputEvent) -> State:
	return null

func process_frame(delta: float) -> State:
	return null

func process_physics(delta: float) -> State:
	return null

func get_horizontal_movement_input() -> float:
	return move_component.get_horizontal_movement_input()

func get_vertical_movement_input() -> float:
	return move_component.get_vertical_movement_input()

func get_boost() -> bool:
	return move_component.get_boost_input()
