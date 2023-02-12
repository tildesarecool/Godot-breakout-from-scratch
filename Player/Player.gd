extends CharacterBody2D
#Sprite2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _ready():
	
	self.position.y = 700
	self.position.x = 650
	#var player = get_node("Sprite2D")
	#get_node("Sprite2D")
	#player.rotation.x = 770
	#player.position.y = 545
	#player.position.x = 90
	
	



# this is where I start custimizing: x instead of y
# also have to rotate it so it's horizontal

func _physics_process(_delta):

	const SPEED = 400
#	player.rotation_degrees = 45
	var pvelocity = Vector2.ZERO
	if Input.is_action_pressed("ui_left"): # start testing keyboard input
		pvelocity.x -= 1
	if Input.is_action_pressed("ui_right"): # start testing keyboard input	
		pvelocity.x += 1
	set_velocity(pvelocity * SPEED)
	move_and_slide()
