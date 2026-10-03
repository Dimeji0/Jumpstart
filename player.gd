extends CharacterBody2D

const SPEED = 700.0
const JUMP_VELOCITY = -900.0
var allow_move:bool =true
var max_velocity = 300
func jump():
	velocity.y =JUMP_VELOCITY
func jump_side(x):
	allow_move=false
	velocity.x =  x
	velocity.y =JUMP_VELOCITY * 1.5
	allow_move=true
	
	
func _physics_process(delta: float) -> void:
	# Add the gravity.
	print(velocity.x)
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if allow_move==true:
		var direction := Input.get_axis("left", "right")
		velocity.x=0
		if direction:
			velocity.x += direction * SPEED
		else:
			velocity.x += move_toward(velocity.x, 0, SPEED)
			
		
	print(velocity.x)
	
	move_and_slide()
