extends Area2D

export (int) var speed
var velocity = Vector2()
var screenSize = Vector2(440,704)

func _ready():
	pass # Replace with function body.

func _process(delta):
	get_input()
	position += velocity * delta

	position.x = clamp(position.x, 0, screenSize.x)
	position.y = clamp(position.y, 0, screenSize.y)
	
	if(velocity.length() > 0):
		$AnimatedSprite.animation = "Run" # Seleccionar imagenes de AnimatedSprite > Run
		$AnimatedSprite.flip_h = velocity.x > 0
	else:
		$AnimatedSprite.animation = "Idle" # Seleccionar imagenes AnimatedSprite > Idle
	
func get_input():
	velocity = Vector2()
	
	if(Input.is_action_pressed("ui_left")):
		velocity.x -= 1
		
	if(Input.is_action_pressed("ui_right")):
		velocity.x += 1

	if(Input.is_action_pressed("ui_page_up")):
		velocity.y -= 1		
		
	if(Input.is_action_pressed("ui_up")):
		velocity.y -= 1	
			
	if(Input.is_action_pressed("ui_down")):
		velocity.y += 1
		
	if(velocity.length() > 0):
		velocity = velocity.normalized() * speed
