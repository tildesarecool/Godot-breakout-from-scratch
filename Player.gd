extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _ready():
	player = get_node("Sprite")
	
	

var speed = 400

# this is where I start custimizing: x instead of y
# also have to rotate it so it's horizontal

func _physics_process(delta):
	
	player.rotation_degrees = 45
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_left"): # start testing keyboard input
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"): # start testing keyboard input	
		velocity.x += 1
	move_and_slide(velocity * speed)
