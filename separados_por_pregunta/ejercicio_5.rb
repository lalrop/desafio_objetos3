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
