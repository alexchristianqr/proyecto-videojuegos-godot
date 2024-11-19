extends Node2D

func _enter_tree():
	print(name + ": Enter Tree")
	
func _ready():
	print(name + ": Ready")
	
func _exit_tree():
	print(name + ": Exit Tree")
