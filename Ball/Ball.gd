extends CharacterBody2D


var SPEED = 300.0
## const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

var ball_velocity = Vector2.ZERO

func _ready():
	randomize()
	# horizontal speed
	ball_velocity.x = [-1,1][randi() % 2] # randi == random integer; in this case a 0 or 1
	# vertical speed
	ball_velocity.y = [-0.8,0.8][randi() % 2] # randi == random integer; in this case a 0 or 1


func _physics_process(delta):
	
	var collision_object = move_and_collide(ball_velocity * SPEED * delta)
	if collision_object:
		ball_velocity = ball_velocity.bounce(collision_object.get_normal() )
##	move_and_slide()

func stop_ball():
	SPEED = 0
	
##	move_and_slide()

func restart_ball():
	# reset speed
	var SPEED = 300.0
	# also restart velocity and rng
		# horizontal speed
	ball_velocity.x = [-1,1][randi() % 2] # randi == random integer; in this case a 0 or 1
	# vertical speed
	ball_velocity.y = [-0.8,0.8][randi() % 2] # randi == random integer; in this case a 0 or 1
	

##func _physics_process(_delta):

##	const SPEED = 400
#	player.rotation_degrees = 45
##	var pvelocity = Vector2.ZERO
##	if Input.is_action_pressed("ui_left"): # start testing keyboard input
##		pvelocity.x -= 1
##	if Input.is_action_pressed("ui_right"): # start testing keyboard input	
##		pvelocity.x += 1
##	set_velocity(pvelocity * SPEED)
##	move_and_slide()



	# Add the gravity.
##	if not is_on_floor():
##		velocity.y += gravity * delta

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
##	var direction = Input.get_axis("ui_left", "ui_right")
##	if direction:
##		velocity.x = direction * SPEED
##	else:
##		velocity.x = move_toward(velocity.x, 0, SPEED)

##	move_and_slide()
