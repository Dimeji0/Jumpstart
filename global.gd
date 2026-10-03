extends Node
@onready var global=%global
var lives = 5
func decrease_health():
	lives-=1
	print(lives)
	if (lives == 0):
		get_tree().reload_current_scene()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
