extends Node

var PlayerScore = 0

func _on_wall_bottom_body_entered(body):
	#pass
	reset_ball()



# Called when the node enters the scene tree for the first time.
##func _ready():
##	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
##func _process(delta):
##	pass





func reset_ball():
	$Ball.position = Vector2(640,360)
	get_tree().call_group('BallGroup', 'restart_ball')
	$Player.position.x = 35 # pixels from left sid eof screen
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
