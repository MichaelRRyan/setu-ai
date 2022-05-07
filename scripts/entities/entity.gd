class_name Entity
extends KinematicBody2D

var linear_velocity : Vector2 = Vector2.ZERO
var angular_velocity : float = 0.0


#-------------------------------------------------------------------------------
func _physics_process(delta):
	linear_velocity = move_and_slide(linear_velocity)
	rotate(angular_velocity * delta)


#-------------------------------------------------------------------------------
