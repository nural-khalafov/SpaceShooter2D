class_name Flying extends State

@export
var boosting_state: State
@export
var idle_state: State

@export var vertical_movement: float
@export var horizontal_movement: float

func enter() -> void:
	super()
	current_speed = default_speed

func process_input(event: InputEvent) -> State:
	if Input.is_action_pressed("boost"):
		return boosting_state
		
	return null
	
func process_physics(delta: float) -> State:
	vertical_movement = -get_vertical_movement_input()
	horizontal_movement = get_horizontal_movement_input()

	parent.velocity = (parent.transform.y * horizontal_movement + parent.transform.x * vertical_movement) * current_speed * delta
	parent.move_and_slide()
	
	if parent.velocity == Vector2.ZERO:
		return idle_state
		
	return null
