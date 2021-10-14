#class
#las clases permiten en ruby definir los objetos propios
#corresponde a un blueprint para la creacion de objetos.
#un objeto es una instancia de una clase
#para crear una clase
#dentro de las clase

class BikeStore #para crear una clase se utiliza la palabra reservada class
  SLOGAN = 'We keep you riding.' #las constantes se declaran en mayusculas
  @@bike_count = 0 #las variables de clase se definen con @@

  attr_writer :name #Ruby nos proporciona el helper attr_writer para definir setters de las propiedades de la clase
  attr_reader :name, :address

  def self.total_number_of_bikes
    @@bike_count
  end

  def initialize(name, address, bikes) #el metodo initialize funciona como constructor para las clases
    @name = name #las variables de instancia se definen con @
    @address = address
    @bycicles = bikes
    @@bike_count += bikes.length
  end

  def sell_bike(color, size, type) # metodo de instancia. este es un metodo publico
    bike = find_bike(color, size, type)
    return 'Bike is not available' if bike.nil?

    @bikes.delete(bike)
    @@bike_count -= 1
    bike
  end

  def buy_bike(bike) #otro metodo de instancia publico
    @bikes.push(bike)
    @@bike_count += 1
  end

  def to_s
    "#{name} - #{SLOGAN} | #{address}"
  end

private #se pueden declarar metodos privados, estos metodos solo pueden ser usados dentro de los otros metodos de la clase
  def find_bike(color, size, type)
    @bikes.select { |bike| bike.color == color && bike.size == size && bike.type == type }
  end

end

class Bike
  attr_accessor :color
  attr_reader :size

  def initialize(color, size)
    @color = color
    @size = size
  end

  def type
    'Generic'
  end
end

class MountainBike < Bike
  def type
    'Mountain'
  end
end

class RoadBike < Bike
  def type
    'Road'
  end
end

generic_bike = Bike.new('Blue', 'S') #para crear un objeto se utiliza el metodo new de la clase, el metodo new esta asociado al initialize
mountain_bike = MountainBike.new('Red', 'M')
road_bike = RoadBike.new('Black', 'M')

bikes = [generic_bike, mountain_bike, road_bike]

bike_store = BikeStore.new('Ruby', 'Av. Siempre Viva 742', bikes)
bike_store2 = BikeStore.new('Rails', 'Av. Siempre Viva 742', bikes)
