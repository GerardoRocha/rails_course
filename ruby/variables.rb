#Variables
#Numerics
i = 1
f = 3.2
puts "Integer: #{i}, Float: #{f}"

#Strings
#Para mas informacion acerca de los strings: https://ruby-doc.org/core-2.7.4/String.html
#Los String pueden ser declarados de diferentes formas
#single quotes
str = 'Rails Course'
#double quotes
another_str = "Las dobles comillas sirven para interpolar el valor \
 de una variable Ejemplo: str=#{str}"
#Algunos metodos importantes de los strings
puts another_str
puts str
# => "Rails Course"
puts str.downcase
# => "rails course"
puts str.reverse
# => "esruoC sliaR"
puts str.length
# => 12
puts str.chars
# => ["R", "a", "i", "l", "s", " ", "C", "o", "u", "r", "s", "e"]
puts str.split(' ')
# => ["Rails", "Course"]

#Symbols
#Es el objeto mas basico que se puede crear en ruby.
#Es por eso que son utilizados como identificadores
sym = :key

#Booleans
bool = true
bool = false

#nil
# Es utilizado para representar un valor vacio o default
empty = nil






