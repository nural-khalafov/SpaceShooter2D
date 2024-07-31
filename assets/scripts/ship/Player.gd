class_name Player extends Node2D

@export
var current_HP: int
@export
var current_SP: int
@export
var current_energy: float

@export
var max_hull_points: int = 100
@export
var max_shield_points: int = 100
@export
var max_energy_points: float = 100.0

func _ready() -> void:
	current_HP = max_hull_points
	current_SP = max_shield_points
	current_energy = max_energy_points
