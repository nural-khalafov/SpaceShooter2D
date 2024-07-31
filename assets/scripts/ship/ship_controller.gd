class_name ShipController extends CharacterBody2D


@onready
var movement_state_machine: Node = $movement_state_machine
@onready
var weapon_state_machine: Node = $weapon_state_machine
@onready
var ship_move_component = $ship_move_component

func _ready() -> void:
	movement_state_machine.init(self, ship_move_component)
	weapon_state_machine.init(self, ship_move_component)

func _unhandled_input(event: InputEvent) -> void:
	movement_state_machine.process_input(event)
	weapon_state_machine.process_input(event)

func _physics_process(delta: float) -> void:
	movement_state_machine.process_physics(delta)
	weapon_state_machine.process_physics(delta)
	shipRotation()

func _process(delta: float) -> void:
	movement_state_machine.process_frame(delta)
	weapon_state_machine.process_frame(delta)

func shipRotation() -> void:
	return look_at(get_global_mouse_position())
