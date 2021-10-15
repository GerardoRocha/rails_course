# El objectivo de este ejercicio es crear una funcion que nos regrese el numero de vocales en un string proporcionado en forma de hash
# Ejemplo:
  # 'Ruby On Rails Course' => { a: 1, e: 1, i: 1, o: 2, u: 2 }
  # 'Gerardo' => { a: 1, e: 1, i: 0, o: 1, u: 0 }
  # 'BCDF' => { a: 0, e: 0, i: 0, o: 0, u: 0 }

def cnt_vocal(str)
  vowell = {a:0, e:0, i: 0, o: 0, u: 0}
  str.chars.each do |chr|
    next unless vowell.keys.include?(chr.to_sym)
    vowell[chr.to_sym]+= 1
  end
  vowell
end

p cnt_vocal("hola")