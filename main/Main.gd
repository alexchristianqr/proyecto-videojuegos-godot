extends Node

export (PackedScene) var Apple

export (int) var playTime

var level
var score
var timeLeft
var screenSize
var playing = false

func _ready():
	randomize()
	screenSize = get_viewport().get_visible_rect().size
	$Player.screenSize = screenSize
	$Player.hide()
	new_game()
	
func new_game():
	playing = true
	level = 1
	score = 0
	timeLeft = playTime
	
	$Player.start($PlayerStart.position)
	$Player.show()
	$GameTimer.start()
	apple_spawn()
	
func apple_spawn():
	for i in 3 + level:
		var apple = Apple.instance()
		$AppleContainer.add_child(apple)
		apple.screenSize = screenSize
		
		apple.position = Vector2(rand_range(0,screenSize.x), rand_range(0,screenSize.y))	
		
	pass
