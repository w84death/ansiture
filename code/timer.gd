
extends Timer

var camera
export var wait = 128
export var speed = 40
var dir = 1

func pan_camera(delta):
	var camera_pos = camera.get_offset()
	if camera_pos.y > 250 or camera_pos.y < 0:
		dir = dir * -1
		if camera_pos.y < 0 :
			wait = 128
		
	self.camera.set_offset(Vector2(camera_pos.x, camera_pos.y+speed*dir*delta))

func _process(delta):
	if wait > 0:
		wait = wait - 1
	else:
		pan_camera(delta)

func _ready():
	self.camera = get_node('/root/scene/camera')
	pass


