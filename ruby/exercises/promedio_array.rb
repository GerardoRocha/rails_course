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
def promedio_e (calificaciones)
    #con este si me da los resultados 2, 25, 11 y 11 --> porque la division la deja en entero
    (calificaciones.sum / calificaciones.count).round

end

def promedio_f(calificaciones)
    #si uso este me regresa 2, 26, 12 y 11 --> porque redondea el flotante
    (calificaciones.sum.to_f / calificaciones.count).round

end

calificaciones  =  [2, 2, 2, 2] 
calificaciones1 =  [1, 5, 87, 45, 8, 8]
calificaciones2 =  [2,5,13,20,16,16,10]
calificaciones3 =  [1,2,15,15,17,11,12,17,17,14,13,15,6,11,8,7]

p 'Resultado entero'
p promedio_e(calificaciones)
p promedio_e(calificaciones1)
p promedio_e(calificaciones2)
p promedio_e(calificaciones3)

p 'Resultado flotante'
p promedio_f(calificaciones)
p promedio_f(calificaciones1)
p promedio_f(calificaciones2)
p promedio_f(calificaciones3)