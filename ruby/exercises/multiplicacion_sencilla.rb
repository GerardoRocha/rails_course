# El objetivo de este ejercicio se trata de multiplicar un número dado por ocho si es un número par y por nueve en caso contrario.
# Crear una funcion en donde el input siempre sera un numero
def mult(num1)
    num1.even? ? num1 * 8 : num1 * 9
end
    
p mult(4)  #32
p mult(5)  #45