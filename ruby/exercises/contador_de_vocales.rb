# El objectivo de este ejercicio es crear una funcion que nos regrese el numero de vocales en un string proporcionado en forma de hash
# Ejemplo:
  # 'Ruby On Rails Course' => { a: 1, e: 1, i: 1, o: 2, u: 2 }
  # 'Gerardo' => { a: 1, e: 1, i: 0, o: 1, u: 0 }
  # 'BCDF' => { a: 0, e: 0, i: 0, o: 0, u: 0 }



  def contador(entrada)

    entrada_up = entrada.upcase
    ary = entrada_up.chars
    
    conteo = [a: entrada_up.chars.count { |letra| letra == 'A' }, 
              e: entrada_up.chars.count { |letra| letra == 'E' }, 
              i: entrada_up.chars.count { |letra| letra == 'I' }, 
              o: entrada_up.chars.count { |letra| letra == 'O' }, 
              u: entrada_up.chars.count { |letra| letra == 'U' }]

  end

  p contador( "Ruby On Rails Course" ) 
  p contador( "aaaAAAaaEEeeOOoo" )