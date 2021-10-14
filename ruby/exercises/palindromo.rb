# Escribe una función que verifique si una cadena dada (no distingue entre mayúsculas y minúsculas) es un palíndromo.
# Un palindromo es una palabra o frase que se lee igual en un sentido que en otro
# Ejemplos:
  # 'a'
  # 'aba'
  # 'Abba'
  # 'Madam'
# Ejemplo invalido:
# 'Hello'

def palindromo?(palabra)
  palabra = palabra.downcase
  palabra.reverse == palabra 
end
  
p palindromo?('ana')
p palindromo?('juan')
p palindromo?('oro')
p palindromo?('ANa')
