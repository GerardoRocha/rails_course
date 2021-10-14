# Escribe una función que verifique si una cadena dada (no distingue entre mayúsculas y minúsculas) es un palíndromo.
# Un palindromo es una palabra o frase que se lee igual en un sentido que en otro
# Ejemplos:
  # 'a'
  # 'aba'
  # 'Abba'
  # 'Madam'
# Ejemplo invalido:
# 'Hello'
def is_palindromo?(phrase)
  p "[#{phrase}] es palindromo?"
  phrase = phrase.delete(' ').downcase
  phrase.eql?(phrase.reverse)
end

p is_palindromo?("Ana")
p is_palindromo?("ANMa")
p is_palindromo?("Anita lava la tina")
p is_palindromo?('a')
p is_palindromo?('aba')
p is_palindromo?('Abba')
p is_palindromo?('Madam')
# Ejemplo invalido:
p is_palindromo?('Hello')