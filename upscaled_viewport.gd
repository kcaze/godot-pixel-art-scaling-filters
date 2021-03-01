tool
extends Sprite

export (NodePath) var viewport_path

var viewport : Viewport

func _ready():
	viewport = get_node(viewport_path)
	
	material = material.duplicate()
	(material as ShaderMaterial).set_shader_param(
		"viewport_texture",
		viewport.get_texture()
	)
	
	texture = ImageTexture.new()
	(texture as ImageTexture).create(
		2*viewport.size.x,
		2*viewport.size.y,
		Image.FORMAT_RGBA8
	)

func _input(event):
	viewport.input(event)
