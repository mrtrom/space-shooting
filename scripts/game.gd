#scripts: game

extends Node

var bestscore = 0 setget set_bestscore
const filepath = "user://bestscore.dat"

func _ready():
  load_bestscore()
  pass
  
func load_bestscore():
  var file = File.new()
  if not file.file_exists(filepath): return

  file.open(filepath, File.READ)
  bestscore = file.get_64()
  file.close()
  pass
  
func save_bestscore():
  var file = File.new()
  file.open(filepath, File.WRITE)
  file.store_64(bestscore)
  file.close()
  pass
  
func set_bestscore(new_value):
  bestscore = new_value
  save_bestscore()
  pass