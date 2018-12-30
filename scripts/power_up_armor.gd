#script: power_up_armor

extends "res://scripts/power_up.gd"

func _ready():
  connect("area_entered", self, "_on_area_entered")
  pass
  
func _on_area_entered(other):
  if other.is_in_group("ship"):
    other.armor += 1
    audio_player.get_node("snd_power_up").play()
    queue_free()
  pass