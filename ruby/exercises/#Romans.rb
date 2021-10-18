#Romans
class Fijnum
def rom_a_numerico
    simb = {1000: "M", 900: "CM", 500: "D", 400: "CD", 100: "C", 90: "XC", 50: "L", 40: "XL", 10: "X", 9: "IX", 5: "V", 4: "IV", 1: "I"}
    multiplicador = self
    simbolo = []
    contador = 0
    simb.each do  |numd,rom|
        simbolo.push(rom * (multiplicador/numd)) 
        multiplicador = multiplicador % numd
        contador +=1
    end
    return simbolo.join
end
end    

rom_a_numerico 444