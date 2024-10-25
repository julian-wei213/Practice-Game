extends Node2D

const SPEED = 60
@onready var raycast_r: RayCast2D = $raycastR
@onready var raycast_l: RayCast2D = $raycastL
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if raycast_l.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
		
	if raycast_r.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
		
	position.x += direction * SPEED * delta
	
