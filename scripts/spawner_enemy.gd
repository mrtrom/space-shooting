# script: spawner_enemy

extends Node

const enemies = [
  preload("res://scenes/enemy_kamikaze.tscn"),
  preload("res://scenes/enemy_clever.tscn")
]

func _ready():
  yield(utils.create_timer(1.2), "timeout")
  spawn()
  pass
  
func spawn():
  while true:
    randomize()
  
    var enemy = utils.choose(enemies).instance()
    var pos = Vector2()
    pos.x = rand_range(0 + 16, utils.view_size[0] - 16)
    pos.y = 0 - 16
    enemy.set_position(pos)
    get_node("container").add_child(enemy)
    yield(utils.create_timer(rand_range(0.5, 1.25)), "timeout")
  pass