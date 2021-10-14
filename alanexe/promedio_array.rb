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

#Despues de algunas pruebas vi que si no se ponen en flotante al parecer en automatico hace
#el redondeo del promedio de los numeros en el array 
#Lo deje asi para que se viera el manejo del metodo round 

def avrg
    values = [1,2,15,15,17,11,12,17,17,14,13,15,6,11,8,7] 
    p "La suma de los valores es: #{values.sum} ::: en flotante es: #{values.sum.to_f}"
    p "El numero de materias son: #{values.size} ::: en flotante es: #{values.size.to_f}"
    average = values.sum.to_f / values.size.to_f
    p "El promedio sin redondear es: #{average}"
    average_round = average.round
end

p "El promedio redondeado es: #{avrg}"
