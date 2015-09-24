
extends Node2D

var map

const MAP_MAX_X = 64
const MAP_MAX_Y = 64

func fill_empty_space():
	var cell
	for x in range(MAP_MAX_X):
		for y in range(MAP_MAX_Y):
			cell = map.get_cell(x, y)
			if cell < 0:
				map.set_cell(x, y, 16)
	return

func _ready():
	self.map = self.get_node('map')
	fill_empty_space()
	pass


