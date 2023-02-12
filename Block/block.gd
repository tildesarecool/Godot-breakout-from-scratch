extends CharacterBody2D


func _ready():
	#var BlockGroup = 
	add_to_group('Blocks') # self.new()
	self.add_to_group(self.BlockOneSprite)
	self.add_to_group(self.BlockOneCollision)
	#var vShowGrp = get_tree().get_nodes_in_group("Blocks")
	
	pass
	##self.BlockOneSprite.rotation_degrees = 90
	##var oSetRotationCol = self.get_node("BlockOneCollision")
	## var oSetRotationSpr = self.get_node("BlockOneSprite")
	
	## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## 
	## var oSetRotationSpr = self.get_node("Sprite2D2")
	## var oSetRotationCol = self.get_node("CollisionShape2D2")
	## oSetRotationSpr.rotation_degrees = 90
	## oSetRotationCol.rotation_degrees = 90
	## oSetRotationCol.position.y = 200
	## oSetRotationCol.position.x = 650
	## oSetRotationSpr.position.y = 200
	## oSetRotationSpr.position.x = 650
	## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## 
	
func fnDuplicate_Blocks():
	#get_tree().call_group('BallGroup', 'stop_ball')
	#$BallGroup.
	#self.duplicate(self.BlockOneSprite)
	var i = self.get_node("BlockOneSprite")
	var x = duplicate(i)
	
	self.add_child(x)
	x.name = "oBlockTwo"
	x.add_to_group("Blocks")
	x.position.y = 200
	
	pass
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	##get_tree().call_group('BallGroup', 'restart_ball')
	
	
	##self.rotation_degrees = 90
	##self.position.y = 300
	##self.position.x = 650
	##self.visible = false
	## self.scale.y = 2.5 # for some reason y  makes the paddle wider. not sure why
	
	
	## self.visible = false
	

