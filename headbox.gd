extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var particles

# Called when the node enters the scene tree for the first time.
func _ready():
	particles = get_node("Particles")
	pass # Replace with function body.


func hit():
	particles.emitting = true
	$AudioStreamPlayer.play(0)
	get_parent().damage(100)
