class RomanNum

def self.rom_a_numer( numerito)
    simb = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}
    simbolo = []
    contador = 0
    simb.each do  |numd,rom|
         simbolo.push(rom * (numerito/numd)) 
         numerito = numerito % numd
        contador +=1
    end
    return simbolo.join
end
end
  
p RomanNum.rom_a_numer(333) 
p RomanNum.rom_a_numer(3456)
p RomanNum.rom_a_numer(7456)