#Las variables se declaran utilizando snake_case
variable_valida = "Hola mundo"
#Es uso de los metodos a los cuales no se les manda un argumento no necesitan parentesis
variable_valida.reverse
#Los metodos que si reciben argumentos si llevan parentesis (funciona sin ellos)
variable_valida.split(' ')
# variable_valida.split ' '
#Existen metodos que pueden terminar con ? o con !(bang)
#Es importante mencionar que estas terminaciones no hacen que rails funcione asi. Son pistas que nosotros como desarrolladores ponemos para quien este leyendo nuestro codigo
#los metodos que terminan en ? en ruby deberan de ser implementados para regresar siempre un valor booleano
5.even?

#Los metodos que terminan en !(bang) pueden significar 2 cosas:
#1. Que el metodo cambiara al objeto que esta llamando el metodo(self)
nombre = 'Gerardo'
nombre.reverse
p nombre
# => "Gerardo"
nombre.reverse!
p nombre
# => "odrareG"
#2. Que el metodo internamente levanta una excepcion
#user.save! este es un metodo de rails que se utliza para salvar un registro en base de datos. Si las validaciones no pasaron o hubo algun problema al salvar a base de datos este metodo levantara una excepcion
#user.save esta version solo regresara true o false pero no levantara una excepcion

#El valor de retorno de un metodo puede ser definido por la variable reservada return, sin embargo, un motodo siempre va a regresar el valor de la ultima expresion evaluada. En ruby es aceptado cualquiera de los dos casos
def metodo_con_return
  return 2 + 5
end
p metodo_con_return
# => 7

def metodo_sin_return
  2 + 5
end
p metodo_sin_return
# => 7

#Cuando se utilizan {} siempre abra un espacion entre el contenido y las llaves: { key: value }

#Syntactic sugar
# se refiere a las adecuaciones que se le han hecho al lenguaje a traves del tiempo para que la lectura y escritura del mismo pueda ser mas facil de leer y mas concisa
#Methods
#Uso de ? and !
#Los metodos =, [, ], ?, %, &, |, <, >, *, -, + y / utilizan esta sintaxis
p ary.[](0)
p ary[0]

p 5.+(2)
p 5 + 2
#los parentesis opcionales
#El uso de los simbolos con los : por delante
hash = { :key => 'value' }
hash = { key: 'value' }






