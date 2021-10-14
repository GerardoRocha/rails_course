#Methods
#El nombre de los metodos tambien siguen snake_case
#si no cuenta con parametros no se usan los parentesis
def saludos_curso
  p 'Hola Rails Course'
end
#se ejecutan solo usando el nombre
saludos_curso
# => "Hola Rails Course"

#los metodos pueden recibir parametros y van separados por comas(se usan parentesis)
def sum(num1, num2)
  return num2 if num1 == nil #guard clause

  num1 + num2
end
sum(2, 2)

#Las variables creadas dentro de los metodos solo estan vivas hasta el termino de la funcion
global = 'Nombre'
def saludar(nombre)
  str = "Hola #{global}"
end
saludar('Curso')
p str
# => nil
#str es una nueva variable para este scope

#Se pueden definir valores por default en la declaracion del metodo para los argumentos
#Es valor default se usara si no se recibe un argumento en su lugar
def greeting(name = 'World')
  "Hello, #{name}"
end
p greeting
# => "Hello, World"
p greeting('Curso')
# => "Hello, Curso"
#Existen algunas desventajas de esto, como recordar el numero de argumentos

# def ejemplo(arg1 = 'juan', arg2)
#   p "arg1: #{arg1} arg2: #{arg2}"
# end

#Se pueden crear metodos que reciban un numero indefinido de argumentos
def saludos(*names)
  p names
  names.each { |name| p "Un saludo para #{name}" }
end

#Se pueden crear metodos con argumentos definidos con una llave - keyword arguments
def nombre_completo(nombre:, apellido:)
  "#{nombre} #{apellido}"
end
#a los keyword arguments se les puede asignar un valor por default
def nombre_completo(nombre: "Ruby", apellido: "Rails")
  "#{nombre} #{apellido}"
end
#las ventajas de los keyword arguments es que no tenemos que recordar el orden de los argumentos


