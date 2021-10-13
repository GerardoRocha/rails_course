#En ruby existe el ciclo for y el ciclo while como en otros lenguajes de programacion
#Sin embargo, en ruby iteramos usando los metodos de que dependen del metodo each
ary = ['Hola', 'Ruby', 'on', 'Rails']
ary.each { |word| p word.upcase }
# "HOLA"
# "RUBY"
# "ON"
# "RAILS"

upcase_ary = ary.map { |word| word.upcase }
# => ["HOLA", "RUBY", "ON", "RAILS"]

filtered_array = ary.select { |word| word.length > 3 }
# => ["Hola", "Ruby", "Rails"]

#any? none? inject sum
#para mas informacion acerca de estos metodos: https://ruby-doc.org/core-2.7.4/Enumerable.html

#Si quisieramos iterar a traves de un lista de numeros simples tenemos 2 opciones:
(0..5).each { |index| p index }
# 1
# 2
# 3
# 4
# 5
5.times { |index| p index} #comienza la cuenta en 0
# 0
# 1
# 2
# 3
# 4