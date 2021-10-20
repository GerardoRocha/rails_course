class Romanos
    VALORES = { 
        1000 => "m",
        900 => "cm",
        500 => "d",
        400 => "cd",
        100 => "c",
        90 => "xc",
        50 => "l", 
        40 => "xl", 
        10 => "x",
        9 => "ix",
        5 => "v",
        4 => "iv", 
        1 => "i" 
    }

  def self.romano(numeroman)  
         roman = ''
         while numeroman > 0
         VALORES.each do |key, value|
            if numeroman >= key.to_i
                roman += VALORES[key]
                numeroman = numeroman - key.to_i
                break
            end
          end
         end
       roman.upcase!
       return roman
    end

   def self.decimal(roman)
      roman.downcase!
      reg = /m|cm|d|cd|c|xc|l|xl|x|ix|v|iv|i/
      temp = roman.scan(reg)
      temp.uniq.inject(0) do |memo, value|
       memo += temp.count(value)*VALORES.key(value).to_i
      end
    end

end


p Romanos.decimal("x")
p Romanos.decimal("M")
p Romanos.decimal("iV")
p Romanos.romano(5)
p Romanos.romano(8)
p Romanos.romano(20)