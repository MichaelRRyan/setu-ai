extends IBrain

var subject : Creature = null
var state_machine : FiniteStateMachine = FiniteStateMachine.new()

var _target : Vector2 = Vector2(100, 100)


#-------------------------------------------------------------------------------
func set_target(new_target : Vector2) -> void:
	_target = new_target


#-------------------------------------------------------------------------------
func get_target() -> Vector2:
	#return _target
	return subject.get_global_mouse_position()


#-------------------------------------------------------------------------------
func set_subject(new_subject : Creature) -> void:
	subject = new_subject


#-------------------------------------------------------------------------------
func get_subject() -> Creature:
	return subject


#-------------------------------------------------------------------------------
func _ready():
	var parent = get_parent()
	if parent and parent is Creature:
		subject = parent
	
	add_child(state_machine)
	
	var behaviour = SteeringBehaviour.new(Seek.new())
	behaviour.set_brain(self)
	state_machine.set_state(behaviour)


#-------------------------------------------------------------------------------
