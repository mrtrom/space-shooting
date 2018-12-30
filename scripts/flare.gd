# script: flare

extends Sprite

func _ready():
  var anim_node = get_node("anim")
  anim_node.play("fade_out")
  yield(anim_node, "animation_finished")
  queue_free()
  pass