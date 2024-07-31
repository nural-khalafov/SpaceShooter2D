extends RichTextLabel

var current_state: State
var player_node: Node
var movement_state_machine: Node
var current_state_name: String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player_node = get_node("/root/Test Scene/Player")
	movement_state_machine = player_node.get_node("movement_state_machine")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	current_state = movement_state_machine.current_state
	current_state_name = current_state.get_name()
	self.text = "current_state = " + "'" + current_state_name + "'"
