# Escribe una función que verifique si una cadena dada (no distingue entre mayúsculas y minúsculas) es un palíndromo.
# Un palindromo es una palabra o frase que se lee igual en un sentido que en otro
# Ejemplos:
  # 'a'
  # 'aba'
  # 'Abba'
  # 'Madam'
# Ejemplo invalido:
# 'Hello'
def pali?(xx)
##  xx == xx.reverse ? true : false
xx == xx.reverse
end

p pali?('oso')
p pali?('jojo')
p pali?('anita lava la tina')