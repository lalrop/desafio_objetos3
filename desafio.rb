# Ejercicio 1
class MiClase
  def de_instancia
  puts 'Método de instancia!'
  end

  def self.de_clase
  puts 'Método de clase!'
  end

end
MiClase.new.de_instancia
MiClase.de_clase

# Ejercicio 2
class MiClase
  attr_accessor :name

  def initialize(name)
   @name = name
  end

  def self.saludar
  "Hola! Soy la clase #{name}"
  end
end

c = MiClase.new('Clase Uno')
puts c.name
c.name = 'MiClase'
puts MiClase.saludar

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

# Ejercicio 4

class Alumno
  attr_accessor :alumnos, :nombre, :nota1, :nota2, :nota3, :nota4

  @@alumnos = []


  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end


  def self.read_file(archivo)
    data = []
    File.open(archivo, 'r') { |file| data= file.readlines }
    data.each do |alumno|
      @@alumnos << Alumno.new(*alumno.split(', '))
    end
      @@alumnos
  end

end

puts Alumno.read_file('notas.txt')

# Ejercicio 5
class Rectangulo

  def initialize(largo, ancho)
  @largo = largo.to_f
  @ancho = ancho.to_f
  end

  def lados
    puts "Este Rectangulo mide #{@largo}cm de largo y #{@ancho}cm de ancho"
  end

  def perimetro
    resultado = (2*@largo) + (2*@ancho)
    puts "El perimetro del Rectangulo es #{resultado}"
  end

  def area
    resultado = @largo*@ancho
    puts "El area del Rectangulo es #{resultado}"
  end

end

class Cuadrado

  def initialize(lado)
  @lado = lado
  end

  def lados
  puts "Este Cuadrado mide #{@largo}cm de largo y #{@ancho}cm de ancho"
  end

  def perimetro
    resultado = 4*@lado
    puts "El perimetro del Cuadrado es #{resultado}"
  end

  def area
    resultado = @lado**2
    puts "El area del Cuadrado es #{resultado}"
  end

end

rectangulo1 = Rectangulo.new(2,4)
cuadrado1 = Cuadrado.new(2)

rectangulo1.perimetro
rectangulo1.area
cuadrado1.perimetro
cuadrado1.area
