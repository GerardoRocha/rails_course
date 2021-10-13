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

#Dentro de estas iteraciones podemos utilizar la palabra next para pasar al siguiente valor. Next regresa un valor de nil

ary.each do |word|
  next if word.length == 2
  p word.upcase
end
# "HOLA"
# "RUBY"
# "RAILS"

hsh = {
  full_name: {
    name: 'Gerardo',
    last_name: 'Rocha',
  },
  ocupations: ['Developer', 'Gamer'],
  age: 32,
}
hsh.each { |key, value| p "Key: #{key} - Value: #{value}"}
# "Key: full_name - Value: {:name=>\"Gerardo\", :last_name=>\"Rocha\"}"
# "Key: ocupations - Value: [\"Developer\", \"Gamer\"]"
# "Key: age - Value: 32"