#script: power_up

extends Area2D

var velocity = Vector2(0, 200)

func _ready():
  set_process(true)
  pass
  
func _process(delta):
  translate(velocity * delta)
  
  if get_position().y >= utils.view_size[1] + 7:
    queue_free()
  pass