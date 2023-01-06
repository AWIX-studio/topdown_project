extends KinematicBody2D

var moveSpeed = 200
var vel = Vector2()
var sprint = false


func _physics_process(delta):
	vel = Vector2.ZERO
#	if Input.is_action_just_pressed("player_right") or Input.is_action_just_pressed("player_left") or Input.is_action_just_pressed("player_up") or Input.is_action_just_pressed("player_down"):
#		$AnimationPlayer.stop()
		
	if Input.is_action_pressed("player_right"):
		vel.x = moveSpeed
		
	elif Input.is_action_pressed("player_left"):
		vel.x = -moveSpeed
		
	if Input.is_action_pressed("player_up"):
		vel.y = -moveSpeed
		
	elif Input.is_action_pressed("player_down"):
		vel.y = moveSpeed
	
	if Input.is_action_pressed("player_down") or Input.is_action_pressed("player_left") or Input.is_action_pressed("player_right") or Input.is_action_pressed("player_up"):
		if sprint:
			$AnimationPlayer.play("player_running")
		else:
			$AnimationPlayer.play("player_walking")
	else:
		$AnimationPlayer.play("player_idle")
		
	
	if Input.is_action_just_pressed("player_sprint"):
		sprint = true
		
	if Input.is_action_just_released("player_sprint"):
		sprint = false
	
	

	if sprint:
		move_and_slide(vel * 2)
	else:
		move_and_slide(vel)

func set_movespeed(a):
	moveSpeed = a


func _on_Portal_body_entered(body):
	get_tree().change_scene("res://Scenes/")



