#Array
#para mas informacion acerca de arrays : https://ruby-doc.org/core-2.7.4/Array.html
#Un array tiene base 0
#Un array puede contenter diferentes tipos de datos
multi_type_array = [1, 'String', nil, true]
#un array no puede tener espacios vacios
#ary = [1, 'String', nil, , true] => error

#Se puede acceder a un elemento del array mediante el metodo [] y el indice del elemento que se requiera
ary = ['Hola', 'Ruby', 'on', 'Rails']
puts ary[1]
# => "Ruby"

#Algunos metodos importantes son:
p multi_type_array.compact
# => [1, "String", true]
p ary.include?('Hola')
# => true
p ary.push('Course')
# => ["Hola", "Ruby", "on", "Rails", "Course"]
p ary.sort
# => ["Course", "Hola", "Rails", "Ruby", "on"]
p ary.join(' ') # une los elementos del array y genera un string
# => "Hola Ruby on Rails"
