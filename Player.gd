extends KinematicBody2D

const moveSpeed = 200
var vel = Vector2()
var sprint = false

func _physics_process(delta):
	vel = Vector2.ZERO
	
	if Input.is_action_pressed("player_right"):
		vel.x = moveSpeed
	if Input.is_action_pressed("player_left"):
		vel.x = -moveSpeed
	if Input.is_action_pressed("player_up"):
		vel.y = -moveSpeed
	if Input.is_action_pressed("player_down"):
		vel.y = moveSpeed
	
	if Input.is_action_just_pressed("player_sprint"):
		sprint = true
	if Input.is_action_just_released("player_sprint"):
		sprint = false
	

	if sprint:
		move_and_slide(vel * 2)
	else:
		move_and_slide(vel)

#vertux top
