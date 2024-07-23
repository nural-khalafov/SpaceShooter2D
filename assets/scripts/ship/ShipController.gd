extends CharacterBody2D
class_name ShipController

@export var default_speed := 1000.0
@export var max_speed := 200
@export var friction := 0.01
@export var acceleration := 0.5

@onready var speed = default_speed


func _physics_process(_delta: float) -> void:
	shipMovement()
	shipRotation()
	

func shipRotation() -> void:
	return look_at(get_global_mouse_position())

func shipMovement() -> void:
	velocity = (-transform.x * get_input_vertical() + transform.y * get_input_horizontal()) * speed
	move_and_slide()

func get_input_horizontal() -> float:
	var horizontal = Input.get_axis("left", "right")
	return horizontal

func get_input_vertical() -> float:
	var vertical = Input.get_axis("up", "down")
	return vertical