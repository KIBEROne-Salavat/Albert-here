extends CanvasLayer


func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/Start.tscn")


func _on_exit_pressed():
	get_tree().quit()


func _on_settings_pressed():
	get_tree().change_scene_to_file("res://Scenes/settings.tscn")
