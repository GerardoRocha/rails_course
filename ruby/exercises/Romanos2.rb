##RomanNums
romanos_map = Hash[1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"]

print "Dame un numero:"
num = gets.chomp.to_i
if num < 4000
   romanos_map.keys.sort { |a,b| b <=> a}.each do
        |n|
        while num >= n
            num = num - n
            print romanos_map[n]
        end
   end
   puts
else
    puts "sea # menor que 3999"
end

