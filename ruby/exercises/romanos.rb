#Roman Numerals

# Create a RomanNumerals class that can convert a roman numeral to and from an integer value.

# “Modern Roman numerals are written by expressing each digit separately starting with the left
# most digit and skipping any digit with a value of zero.
# In Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC.
# 2008 is written as 2000=MM, 8=VIII; or MMVIII.
# 1666 uses each Roman symbol in descending order: MDCLXVI.”

def conversion(numdec)


    equiv = {1 => "I",2 => "II", 3 => "III", 4 => "IV", 5 => "V", 6 => "VI", 7 => "VII", 8 => "VIII", 9 => "IX", 
        10 => "X", 20 => "XX", 30 => "XXX", 40 => "XL", 50 => "L", 60 => "LX", 70 => "LXX", 80 => "LXXX", 90 => "XC", 
        100 => "C", 200 => "CC", 300 => "CCC", 400 => "CD", 500 => "D", 600 => "DC", 700 => "DCC", 800 => "DCCC", 900 => "CM", 
        1000 => "M", 2000 => "MM", 3000 => "MMM"}
    romstr = /MMM|MM|M|CM|DCCC|DCC|DC|D|CD|CCC|CC|C|XC|LXXX|LXX|LX|L|XL|XXX|XX|X|IX|VIII|VII|VI|V|IV|III|II|I/

    if numdec.is_a? Integer
        if numdec > 3999
            p "El numero no puede ser procesado"
        else
            u = (numdec % 10)
            d = (numdec % 100 - u)
            c = (numdec % 1000 - (d + u))
            m = (numdec % 10000 - (c + d + u))

            p "El numero romano obtenido del numero decimal #{numdec} es #{equiv[m]}#{equiv[c]}#{equiv[d]}#{equiv[u]}"
              
        end            
    else
        #numdec

        ary = numdec.scan(romstr) 
        decimal = 0

        equiv.to_a.each { |dec , rom| ary.each { |romb| if romb == rom
            decimal += dec
        end} }

        if decimal > 3999
            p "El numero no puede ser procesado"            
        else
            p "El numero decimal obtenido del romano #{numdec} es #{decimal}"            
        end
        
    end

end


conversion("III")
conversion(100)
conversion("IX")
conversion(1218)
conversion("MIII")
conversion("MCD")
conversion(324)
conversion("MMMCDXCIX")
conversion(3456)