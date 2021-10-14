# El objectivo de este ejercicio es crear una funcion que nos regrese el numero de vocales en un string proporcionado en forma de hash
# Ejemplo:
  # 'Ruby On Rails Course' => { a: 1, e: 1, i: 1, o: 2, u: 2 }
  # 'Gerardo' => { a: 1, e: 1, i: 0, o: 1, u: 0 }
  # 'BCDF' => { a: 0, e: 0, i: 0, o: 0, u: 0 }
def vowels_counter(phrase)
  p "#{phrase} tiene:"
  hsh = { a: 0, e: 0, i: 0, o: 0, u: 0 }
  hsh.each { |key, value| hsh[key]=phrase.downcase.count(key.to_s) }
end

p vowels_counter('Ruby On Rails Course')
p vowels_counter('Gerardo')
p vowels_counter('BCDF')