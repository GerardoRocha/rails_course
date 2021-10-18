#Romans

def rom_a_numerico( numerito)
    simb = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}
#    multiplicador = self
    simbolo = []
    contador = 0
    simb.each do  |numd,rom|
#        simbolo.push(rom * (multiplicador/numd)) 
#        multiplicador = multiplicador % numd
         simbolo.push(rom * (numerito/numd)) 
         numerito = numerito % numd
        contador +=1
    end
    return simbolo.join
end
  
p rom_a_numerico(333) 
p rom_a_numerico(3456)
p rom_a_numerico(7456)