extends Node2D
func _process(_delta: float) -> void:
	if Input.is_action_pressed("ui_right"):
		$bonhommeSauter.play("walkRight")
	else:
		if Input.is_action_pressed("ui_up"):
			$bonhommeSauter.play("happyHappyHappy")
		else:
			$bonhommeSauter.play("idle")
	if Input.is_action_pressed("ui_select"):
		$AudioStreamPlayer2D.play()
