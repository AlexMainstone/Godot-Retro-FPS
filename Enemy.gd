extends KinematicBody


var hp = 100


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func damage(dmg):
	hp -= dmg
	if hp <= 0:
		die()

func die():
	$Sprite.play("death")
	
