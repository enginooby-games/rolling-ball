extends Button

func _ready():
	pass

func _on_Play_Button_pressed():
	self.text = "Loading..."
	get_tree().change_scene('res://scenes/Level 1.tscn')
	
