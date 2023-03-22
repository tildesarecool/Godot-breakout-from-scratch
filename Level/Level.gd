extends Node

# I was looking for htis int he documentation and then stumbled upon it 
# https://docs.godotengine.org/en/4.0/getting_started/first_2d_game/03.coding_the_player.html
# func _ready():
#    screen_size = get_viewport_rect().size

var PlayerScore = 0

#var viewableWidth = get_viewport().size.length()

func _on_wall_bottom_body_entered(body):
	
	#pass
	reset_ball()
	#print_debug(viewableWidth)



# Called when the node enters the scene tree for the first time.
##func _ready():
##	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
##func _process(delta):
##	pass

func reset_ball():
	$Ball.position = Vector2(640,360)
	get_tree().call_group('BallGroup', 'restart_ball')
	##get_tree().call_group('Blocks', 'fnDuplicate_Blocks')
	$Player.position.x = 650 # pixels from left side of screen
	##$Opponent.position.x = 1280 - 35 # pixels from left sid eof screen
	
	
	#pass
	## $Ball.position = Vector2(640,360)
	
##	get_tree().call_group('BallGroup', 'stop_ball')
##	$CountDownTimer.start()	
##	$CountDownLabel.visible = true
##	# sound at score time
##	$ScoreSound.play()
	# setting position of players
##	$Player.position.x = 35 # pixels from left sid eof screen
##	$Opponent.position.x = 1280 - 35 # pixels from left sid eof screen


##	score_achieved()
