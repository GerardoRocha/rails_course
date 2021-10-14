#Blocks
#Los bloques son pequeñas funciones anonimas que pueden ser enviadas a una metodo
#los bloques pueden ser encerrados entre {}(bloque de una linea) o entre un do end (multilinea)
#los bloques pueden recibir argumentos con ||
#un bloque es muy util para escribir alguna logica que se necesita usar en otro momento.
#Para poder ejecutar un bloque existe la palabra yield

def message(nombre)
  yield
end

def message2
  yield
end

message(nombre) { p 'Esto es un block' }

message do
  p 'Estoy en un bloque'
  p 'Y soy multilinea'
end

#ejemplo usando argumentos
def message
  return 'Hola mundo' unless block_given?

  yield 'juan'
  yield 'pedro'
  yield 'josue'
  yield 'hector'
end
#block_given?

message { |name| p "este es un mensaje para #{name}" }

#los bloques son pasados a una funcion de manera implicita o explicita
def message(nombre)
  block.call
  message2(block)
end

message('nombre') { p "este es un mensaje" }

