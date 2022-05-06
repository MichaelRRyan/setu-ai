class_name SteeringBehaviour
extends Behaviour

var _steering_method = null


#-------------------------------------------------------------------------------
func _init(steering_method):
	_steering_method = steering_method


#-------------------------------------------------------------------------------
func _physics_process(delta):
	brain.get_subject().apply_steering(_steering_method.get_steering(brain), delta)


#-------------------------------------------------------------------------------
