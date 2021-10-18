def romanos(numeroman)
    numero = 0 
    numeroman.downcase! 
    int = numeroman.length
    valores = { i: 1, v: 5, x: 10, l: 50, c: 100, d: 500, m: 1000 }
  (0..int).each do |i|
    if i + 1 < int && valores[i.to_sym] < valores[i.to_sym]
        numero = numero - valores[i.to_s]
    else
        numero = numero + valores[i.to_s]   
    end  
  end
   numero 
end

p romanos('V')
p romanos('VIII')
p romanos('li')