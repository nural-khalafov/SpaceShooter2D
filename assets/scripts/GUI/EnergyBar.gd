extends TextureProgressBar

signal is_energy_changed

var player_energy: float = 100

func change_energy(value):
	emit_signal("is_boosted", player_energy)
