#if
if true
  p 'Hola mundo'
end
# => "Hola Mundo"

if true && false
  p 'Hola mundo'
end
# => nil

if true && false
  p 'Hola if'
elsif false || false
  p 'Hola elsif'
else
  p 'Hola else'
end
# => "Hola Mundo"

#unless
unless false
  p 'Adios mundo'
end
# => "Hola Mundo"
unless true
  p 'Hola mundo'
end
# => nil

#case (switch)
edad = 5
case edad
when 0..4
  p 'baby'
when 5..18
  p 'adolecente'
else
  p 'adulto'
end


