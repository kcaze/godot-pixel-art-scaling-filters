extends Sprite

export (Array, Texture) var demo_pictures
var idx = 0

func _input(event):
	if event.is_action_pressed("ui_right"):
		idx = (idx + 1) % len(demo_pictures)
		texture = demo_pictures[idx]
	elif event.is_action_pressed("ui_left"):
		idx = (idx - 1) % len(demo_pictures)
		texture = demo_pictures[idx]
