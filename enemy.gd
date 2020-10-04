extends KinematicBody2D

var velocity = Vector2()
export var direction = -1

func _ready():
	if direction == 1:
		$AnimatedSprite.flip_h = true

func _physics_process(delta):
	velocity.y += 20
	
	velocity.x = 50 * direction
	
	move_and_slide(velocity)
