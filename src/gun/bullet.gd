extends Area2D

export(int, 0, 12000) var speed := 1
var direction = Vector2.ZERO


func _ready():
	pass


func _process(delta):
	position += speed * delta * direction.normalized()


func _on_screen_exited():
	queue_free()