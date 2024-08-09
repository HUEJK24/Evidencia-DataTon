extends Sprite2D

# Velocidad de desplazamiento del fondo
@export var scroll_speed: float = 100.0

# Tamaño de la textura en píxeles (ajústalo al tamaño real de tu imagen)
var texture_size: Vector2

func _ready():
	# Obtener el tamaño de la textura
	texture_size = texture.get_size()

func _process(delta):
	# Mover el fondo a la izquierda
	position.x -= scroll_speed * delta

	# Reiniciar la posición para que se repita infinitamente
	if position.x < -texture_size.x:
		position.x += texture_size.x
