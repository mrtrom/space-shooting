# script: spawner_power_up

extends Node

const power_ups = [
  preload("res://scenes/power_up_armor.tscn"),
  preload("res://scenes/power_up_laser.tscn")
]

func _ready():
  yield(utils.create_timer(rand_range(10, 15)), "timeout")
  spawn()
  pass
  
func spawn():
  while true:
    randomize()
  
    var power_up = utils.choose(power_ups).instance()
    var pos = Vector2()
    pos.x = rand_range(0 + 7, utils.view_size[0] - 16)
    pos.y = 0 - 7
    power_up.set_position(pos)
    get_node("container").add_child(power_up)
    yield(utils.create_timer(rand_range(10, 15)), "timeout")
  pass