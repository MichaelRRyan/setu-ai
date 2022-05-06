class_name Seek


#-------------------------------------------------------------------------------
func get_steering(brain : IBrain) -> Steering:
	var steering = Steering.new()
	steering.linear = brain.get_target() - brain.get_subject().position
	steering.linear = steering.linear.normalized()
	
	return steering


#-------------------------------------------------------------------------------
