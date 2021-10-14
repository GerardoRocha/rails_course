# El objetivo de este ejercicio se trata de multiplicar un número dado por ocho si es un número par
# y por nueve en caso contrario.
# Crear una funcion en donde el input siempre sera un numero
def mult(numero)
  numero.even? ? (numero * 8) : (numero * 9)
end

p mult(4) #32
p mult(5) #45