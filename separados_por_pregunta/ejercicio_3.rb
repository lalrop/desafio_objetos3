# Ejercicio 3

class Vehicle
  attr_accessor :model, :year
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end

end

class Car < Vehicle
  @@contador = 0
  def initialize(model, year)
    super
    @@contador += 1

  end

  def self.mostrar_contador
    puts "He  contado #{@@contador} instancias"

  end
  def engine_start
    super
    puts 'El motor se ha encendido'
  end

end

modelos = %w[Toyota, Bwm, Chevrolet, Audi, Chery, Volkswagen]
años = [1980, 1981, 1982,1983,1990,1995,2000,2010]
auto = []

10.times do
  auto.push(Car.new(modelos.sample, años.sample))
end

puts Car.mostrar_contador
