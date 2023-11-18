extends StaticBody3D

const FULL_HEALTH = 10
var currentHealth = FULL_HEALTH

@onready var treeBranches = $Tree_branches

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
		
func handleHit(damage):
		currentHealth -= damage
		
		if currentHealth <= 0 and is_instance_valid(treeBranches):
			Score.incrementScore()	
			treeBranches.queue_free()
