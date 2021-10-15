# El objectivo de este ejercicio es crear una funcion que nos regrese el numero de vocales en un string proporcionado en forma de hash
# Ejemplo:
  # 'Ruby On Rails Course' => { a: 1, e: 1, i: 1, o: 2, u: 2 }
  # 'Gerardo' => { a: 1, e: 1, i: 0, o: 1, u: 0 }
  # 'BCDF' => { a: 0, e: 0, i: 0, o: 0, u: 0 }

def cnt_vocal(str)
  vowel = {a:0, e:0, i: 0, o: 0, u: 0}
  str.downcase!
  str.chars.each do |chr|
    next unless vowel.keys.include?(chr.to_sym)
    vowel[chr.to_sym]+= 1
  end
  vowel
end

p cnt_vocal("hijo")
p cnt_vocal("hIjo")
p cnt_vocal("MURCIELAGO")