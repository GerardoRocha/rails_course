# El objectivo de este ejercicio es crear una funcion que nos regrese el numero de vocales en un string proporcionado en forma de hash
# Ejemplo:
  # 'Ruby On Rails Course' => { a: 1, e: 1, i: 1, o: 2, u: 2 }
  # 'Gerardo' => { a: 1, e: 1, i: 0, o: 1, u: 0 }
  # 'BCDF' => { a: 0, e: 0, i: 0, o: 0, u: 0 }

def contador!(palabra)
  palabra.downcase!
  vocales = { a: 0, e: 0, i: 0, o: 0, u: 0 }
  palabra.chars.each do |chr|
    next unless vocales.keys.include?(chr.to_sym)
    vocales[chr.to_sym] = vocales[chr.to_sym] + 1
  end
  vocales
end
 p contador!("hola mundo")
 p contador!("HOLA MUNDO")

