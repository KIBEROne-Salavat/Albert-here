extends Button

var slide_texts = ["Что-то я сегодня задержался! Пойду домой...", '', "2", "3", "TEST!", "After"]
var slide_images = ["res://Assets/settingsbg.png", "res://Assets/tratuar.png", "res://Assets/inbakerybg.png"]
var current_slide = 0
var answer = 0
var button_vsbl = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("../DialogStart").text = slide_texts[current_slide]


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta):
	pass
	

func _on_button2_pressed():
	answer = 1
	button_vsbl = 0
	get_node("../Button2").visible = false
	get_node("../Button3").visible = false
	get_tree().change_scene_to_file("res://Scenes/settings.tscn")
	

func _on_button3_pressed():
	answer = 2
	button_vsbl = 0
	get_node("../Button2").visible = false
	get_node("../Button3").visible = false
	get_tree().change_scene_to_file("res://Scenes/second.tscn")

func _pressed():
	if current_slide != len(slide_texts)-1 and button_vsbl != 1:
		current_slide += 1
	if current_slide == 2:
		get_node("../Menubg").texture = load(slide_images[0])
	get_node("../DialogStart").text = slide_texts[current_slide]
	
	if current_slide == 1:
		get_node("../Button2").visible = true
		get_node("../Button3").visible = true
		get_node("../Button2").text = "Пойду домой"
		get_node("../Button3").text = "Останусь здесь"
		button_vsbl = 1
	
	
	
		
	
	

	if current_slide == 3:
		get_node("../Menubg").texture = load(slide_images[1])
	get_node("../DialogStart").text = slide_texts[current_slide]
	
	if current_slide == 4:
		get_node("../Menubg").texture = load(slide_images[2])
	get_node("../DialogStart").text = slide_texts[current_slide]
	

	

	

