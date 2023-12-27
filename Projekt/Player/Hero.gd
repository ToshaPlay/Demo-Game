extends CharacterBody2D


const SPEED = 100.0
const JUMP_VELOCITY = -400.0
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var anim = $Plaer_move

func _physics_process(delta):
 # Add the gravity.
 if not is_on_floor():
  velocity.y += gravity * delta
  
 if Input.is_action_pressed("ui_accept") and is_on_floor():
  velocity.y = JUMP_VELOCITY
  anim.play("Jump")
  
 var direction = Input.get_axis("ui_left", "ui_right")
 
 
 
 velocity.x = direction * SPEED
 if velocity.y == 0:
  anim.play("run")

 if velocity.y == 0:
  anim.play("Idle")
  
 if direction == -1:
  $Plaer_move.flip_h = true
 elif direction == 1:
  $Plaer_move.flip_h = false
  
 move_and_slide()
