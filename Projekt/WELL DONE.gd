extends VideoStreamPlayer


@onready var videoPlayer = $VideoStreamPlayer

func _on_body_entered(body):
	if body.name == "Hero":
		videoPlayer.play()
