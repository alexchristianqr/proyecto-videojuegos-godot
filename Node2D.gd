extends Node2D


# Declare member variables here. Examples:
var score = 0
var max_health = 150 # Cantidad maxima de vidas
var playe_name = "Alex Quispe" # Nombre del jugador
var selected_weapon # Seleccionar carga
var dmg = 25.2
var defense = 20.0
var max_score = 0
var paused = false
var health = max_health
var bonus_dmg = dmg * 0.35
var true_dmg = int(dmg) * int(defense)

var habilidades = []
var personajes = ["Aris", "Natalia"]

# Called when the node enters the scene tree for the first time.
func _ready():
	print("El jugador es: ", playe_name)
	
	# Convirtiendo string a entero
	max_health = int(max_health)
	print("", max_health)
	
	# Aritmeticos
	print("Division entera: ", 11/5)
	print("Division con coma flotante: ", 11)
	print("Residuo: ", 11%5)
	
	# Relacionales
	var weak = max_health < 200
	print("Weak: ", weak)
	
	# Logicos
	print("Max score: ", max_score)
	var rpta_and = (score > 0 and score > max_score)
	print("score > 0 and score > max_score: ", rpta_and)
	var rpta_or = (score < 0 or score < max_score)
	print("score < 0 or score < max_score: ", rpta_or)
	
	# Condicionales
	if(health <= 0):
		print("Juego finalizado")
	else:
		print("Continuar jugando")
		
	# Estructura Match
	var dia = 1
	print("Dia de la semana seleccionada")
	match dia:
		1: print("Domingo")
		2: print("Lunes")
		3: print("Martes")
		4: print("Miercoles")
		5: print("Jueves")
		6: print("Viernes")
		7: print("Sabado")
		_: print("Error al seleccionar dia")

	# Arreglos
	print("Listar habilidades: ", habilidades)
	habilidades.append("Doble sentido")
	habilidades.append("Dash")
	habilidades.append("Golpe critico")
	
	print("Listar habilidades agregadas: ", habilidades)
	
	print("personajes[1]: ", personajes[1] )
	
	print("Tamano del arreglo habilidades: ", habilidades.size())
	print("Tamano del arreglo personajes: ", personajes.size())
	
	# Recorrer arreglos
	for habilidad in habilidades:
		print("Habilidad: ", habilidad)
	
	for personaje in personajes:
		print("Personaje: ", personaje)

