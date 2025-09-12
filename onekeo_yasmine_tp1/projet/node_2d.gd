extends Node2D

var is_playing_1 := false
var is_playing_2 := false

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
		
func _on_ButtonUp_pressed():
	if is_playing_1:
		$bonhommeSauter.play("happyHappyHappy")
	else:
		$bonhommeSauter.stop()
	is_playing_1 = !is_playing_1
	
func _on_ButtonRight_pressed():
	$bonhommeSauter.play("walkRight")
	if is_playing_2:
		$bonhommeSauter.play("walkRight")
	else:
		$bonhommeSauter.stop()
	is_playing_2 = !is_playing_2
