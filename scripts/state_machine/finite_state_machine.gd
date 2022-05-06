class_name FiniteStateMachine
extends Node

var current : FState = null


#-------------------------------------------------------------------------------
func set_state(new_state : FState) -> void:
	if current != null:
		current.queue_free()
	
	if new_state != null:
		add_child(new_state)
		
	current = new_state


#-------------------------------------------------------------------------------
