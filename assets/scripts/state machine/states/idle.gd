extends State

@export
var boosting_state: State
@export
var flying_state: State

func enter() -> void:
	super()
	parent.velocity = Vector2.ZERO
	
func process_input(event: InputEvent) -> State:
	if get_horizontal_movement_input() or get_vertical_movement_input() != 0.0:
		return flying_state
	if Input.is_action_just_pressed("boost"):
		return boosting_state
		
	return null
	
func process_physics(delta: float) -> State:
	return null
