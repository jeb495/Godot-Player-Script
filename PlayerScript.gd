extends KinematicBody2D


var movespeed = 500



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#you have to configure inputs through project settings
func _physics_process(_delta):
	var motion = Vector2()
	
	if Input.is_action_pressed("up"):
		motion.y -= 1
	if Input.is_action_pressed("down"):
		motion.y += 1
	if Input.is_action_pressed("right"):
		motion.x += 1
	if Input.is_action_pressed("left"):
		motion.x -= 1
		
	motion = motion.normalized()
	motion = move_and_slide(motion * movespeed)
	look_at(get_global_mouse_position())

	


