# El objectivo de este ejercicio es crear una funcion que nos regrese el numero de vocales en un string proporcionado en forma de hash
# Ejemplo:
  # 'Ruby On Rails Course' => { a: 1, e: 1, i: 1, o: 2, u: 2 }
  # 'Gerardo' => { a: 1, e: 1, i: 0, o: 1, u: 0 }
  # 'BCDF' => { a: 0, e: 0, i: 0, o: 0, u: 0 }
  def cuentavocales!(stg)
    vocales = {a: 0, e: 0, i: 0, o: 0, u: 0}
    stg.chars.each do |chr|   
      chr = chr.downcase
      next unless vocales.keys.include?(chr.to_sym)
              vocales[chr.to_sym] += 1
           
    end
    vocales
  end
    
    p cuentavocales!("Evelyn")
   # p cuentavocales!("Ricardo")
   # p cuentavocales!("Angelica")
    p cuentavocales!("hectorouu")