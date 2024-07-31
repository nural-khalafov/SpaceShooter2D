extends Flying

@export
var flying_state: State

@export
var time_to_boost: float = 5.0

var boost_timer: float = 0.0

func enter() -> void:
	super()
	boost_timer = time_to_boost
	current_speed = default_speed * boosting_rate
	
func process_input(event: InputEvent) -> State:
	return null
	
func process_physics(delta: float) -> State:
	boost_timer -= delta
	if boost_timer <= 0.0 or Input.is_action_just_released("boost"):
		if parent.velocity != Vector2.ZERO:
			boost_timer = 0.0
			return flying_state
		
		boost_timer = 0.0
		return idle_state
		
	return super(delta)
