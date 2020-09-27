extends KinematicBody2D

var velocity = Vector2(0,0)
const SPEED = 180

func _physics_process(_delta):
  if Input.is_action_pressed("right"):
    velocity.x = SPEED
  if Input.is_action_pressed("left"):
    velocity.x = -SPEED

  velocity.y = velocity.y + 30
  
  velocity = move_and_slide(velocity)

  velocity.x = lerp(velocity.x, 0, 0.2)