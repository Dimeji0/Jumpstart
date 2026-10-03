extends RigidBody2D
@onready var Life = %life
@onready var player =%Player
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		var y_delta = position.y - body.position.y
		var x_delta= body.position.x - position.x
		print(y_delta)
		print(x_delta,"this is x")
		if (y_delta >130):
			print("ddestroy enemy")
			queue_free()
			body.jump()
		else:
			print("decrease player health")
			Life.decrease_health()
			if (x_delta> -10):
				
				body.jump_side(-5000)
				print("print are you working")
			else:
				body.jump_side(5000)
				print("ae you working")
