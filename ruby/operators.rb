#Operators
#Aritmeticos
puts 2 + 3
# => 5
puts 3 - 1
# => 2
puts 2 * 3
# => 6
puts 4 / 2 #como vimos en el curso hay que tener cuidado con las divisiones ya que si se hacen entre 2 enteros el resultados sera un entero
# => 2
puts 5 % 2
# => 1
puts 2 ** 3 # exponente
# => 8

#De comparacion
#Regresan un valor booleano al evaluearse
puts 1 == 1
# => true
puts 1 != 1 #diferente
# => false
puts 3 > 1
# => true
puts 3 < 2
# => false
puts 4 >= 2
# => true
puts 5 <= 5
# => true

#De asignacion
c = 10
c += a # c = c + a
c -= a # c = c - a
#Esta sintaxis existe con todos los operadores aritmeticos

#Logicos
puts true && false
# => false
puts true || false
# => true
puts !true
# => false

#Operador ternario
variable = true ? 'Hola' : 'Mundo'
puts variable
variable2 = false ? 'Hola' : 'Mundo'
# => "Mundo"

#Operadores de rango
# ..
p (1..5).to_a
# => [1, 2, 3, 4, 5]
# ...
p (1...5).to_a
# => [1, 2, 3, 4]
#pueden ser creados con variables
int = 5
p (1..int).to_a
# => [1, 2, 3, 4, 5]

#dot operator
#se utiliza para llamar un metodo de un object
Class.methods