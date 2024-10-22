#script: laser_ship

extends "res://scripts/laser.gd"

func _ready():
  connect("area_entered", self, "_on_area_entered")
  audio_player.get_node("snd_laser_ship").play()
  pass
  
func _on_area_entered(other):
  if other.is_in_group("enemy"):
    other.armor -= 1
    create_flare()
    
    utils.remote_call("camera", "shake", 1, 0.13)
    queue_free()
  pass