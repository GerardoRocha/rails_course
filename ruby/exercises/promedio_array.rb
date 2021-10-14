# Es el final del año académico, el momento fatídico de su informe escolar. Deben calcularse los promedios.
# Todos los estudiantes se acercan a usted y le ruegan que calcule su promedio para ellos.

# El objetivo de esta practica es crear una funcion que devuelva el promedio de las califiaciones redondeado a su número entero más cercano.

# Input:
#   Array de numeros
#   El arreglo nunca estara vacio pero puede contener diferente numero de califiaciones
#   Ejemplos:
#     Input: [2, 2, 2, 2] Resultado: 2
#     Input: [1, 5, 87, 45, 8, 8] Resultado: 25
#     Input: [2,5,13,20,16,16,10] Resultado: 11
#     Input: [1,2,15,15,17,11,12,17,17,14,13,15,6,11,8,7] Resultado: 11

arreglo = [10, 10, 9.3, 7.8, 8.5, 9.6, 8.7, 8.1]
print "promedio: ",  arreglo.sum(0.0) / arreglo.size
puts
arreglo = [1, 5, 87, 45, 8, 8]
print "Average: ", arreglo.sum(0) / arreglo.size
p '        .'
arreglo = [2,5,13,20,16,16,10]
print "se pudo!!  = ", arreglo.sum(0.0) / arreglo.size
p '        .'