# El objectivo de este ejercicio es crear una funcion que nos regrese el numero de vocales en un string proporcionado en forma de hash
# Ejemplo:
  # 'Ruby On Rails Course' => { a: 1, e: 1, i: 1, o: 2, u: 2 }
  # 'Gerardo' => { a: 1, e: 1, i: 0, o: 1, u: 0 }
  # 'BCDF' => { a: 0, e: 0, i: 0, o: 0, u: 0 }

  def cuentavocales(exp1)
    hay = { a: 0, e: 0, i: 0, o: 0, u:0}
    exp1.chars.each do |charx|
    case charx
    when "a"
      hay[charx.to_sym] +=  1
    when "e"
      hay[charx.to_sym] +=  1
    when "i"
      hay[charx.to_sym] +=  1
    when "o"
      hay[charx.to_sym] +=  1
    when "u"
      hay[charx.to_sym] +=  1
    end
  end
    hay
  end

  p cuentavocales("Ruby on Rails Course")
  p cuentavocales("HolA CRAYOLAR")
  p cuentavocales("aeiou AEIOU")

