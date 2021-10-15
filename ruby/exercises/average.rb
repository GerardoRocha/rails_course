def average(*numbers)
    numbers.sum.to_f / numbers.count.to_f
end

puts average(2,2,2)
puts average(2,3,2,2)
puts average(10,10,10,10,9.9999)