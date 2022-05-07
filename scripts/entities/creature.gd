class_name Creature
extends Entity

export var max_speed : float = 5.0
export var linear_acceleration : float = 5.0
export var angular_acceleration : float = 5.0
export var max_angular_speed : float = 5.0


#-------------------------------------------------------------------------------
func apply_steering(steering : Steering, delta):
	linear_velocity += steering.linear * linear_acceleration * delta
	angular_velocity += steering.angular * angular_acceleration * delta
	
	if linear_velocity.length_squared() > max_speed * max_speed:
		linear_velocity = linear_velocity.normalized() * max_speed
	
	if abs(angular_velocity) > max_angular_speed:
		 angular_velocity = max_angular_speed * sign(angular_velocity)


#-------------------------------------------------------------------------------
