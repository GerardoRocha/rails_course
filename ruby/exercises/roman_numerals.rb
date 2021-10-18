class RomanNumerals
    HSH_ROMAN = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 =>"C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I" 
    }

  def self.decimal_to_roman(number)
    roman = ''
    while number > 0
      HSH_ROMAN.each do |key, value|
        if number >= key.to_i
          roman += HSH_ROMAN[key]
          number = number - key.to_i
          break
        end
      end
    end
    return roman
  end

  def self.roman_to_decimal(roman)
    reg    = /M|CM|D|CD|C|XC|L|XL|X|IX|V|IV|I/
    temp = roman.scan(reg)
    temp.uniq.inject(0) do |memo, value|
      memo += temp.count(value)*HSH_ROMAN.key(value).to_i
    end
  end

end

p RomanNumerals.decimal_to_roman(1990)
p RomanNumerals.roman_to_decimal('MCMXC')
p RomanNumerals.decimal_to_roman(2008)
p RomanNumerals.roman_to_decimal('MMVIII')
p RomanNumerals.decimal_to_roman(1666)
p RomanNumerals.roman_to_decimal('MDCLXVI')