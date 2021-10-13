#Hash
#hashes son muy parecidos a los arrays. son una estructura de datos y nos sirven como diccionarios
hsh = { :nombre => 'Gerardo', :apellido => 'Rocha' }

#Los elementos de un hash pueden usarse con el metodo []
p hsh[:nombre]
# => "Gerardo"

#Si una llave no existe en el hash el valor que regresa es nil
p hsh[:ocupacion]
# => nil

#Como se puede apreciar en el ejemplo por lo regular usamos simbolos como llaves, sin embargo la llave puede ser cualquier valor
hsh2 = { 'esto es una llave' => 'Este es el valor de la llave' }
p hsh2['esto es una llave']
# => "Este es el valor de la llave"

#algunos metodos importantes de los hashes son:
#para mas informacion https://ruby-doc.org/core-2.7.4/Hash.html
p hsh.values
# => ["Gerardo", "Rocha"]

p hsh.keys
# => [:nombre, :apellido]

p hsh.value?('Perez')
# => false

p hsh.key?(:nombre)
# => true

#En el caso de los hashes los simbolos pueden tener una notacion especial(Solo para los hashes!!)
hsh3 = { nombre: 'Gerardo', apellido: 'Rocha' }

#Un punto importante a mencionar es que los valores puedes ser cualquier cosa, incluso otro hash
hsh4 = {
  full_name: {
    name: 'Gerardo',
    last_name: 'Rocha',
  },
  ocupations: ['Developer', 'Gamer'],
  age: 32,
}
#para acceder a los valores del siguiente hash se hace de la siguiente forma:
p hsh4[:full_name][:name]
# => "Gerardo"