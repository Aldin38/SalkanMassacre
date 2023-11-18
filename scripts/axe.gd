extends StaticBody3D

const DAMAGE = 2.5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_hitbox_body_entered(body):
	if body.is_in_group("tree"):
		body.handleHit(DAMAGE)

