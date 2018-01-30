class Dog
  def initialize(nombre,raza,color)
    @nombre = nombre
    @raza = raza
    @color = color
  end

  def ladrar
    puts "#{@nombre} está ladrando"
  end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

perro = Dog.new(propiedades[:nombre],propiedades[:raza],propiedades[:color])

perro.ladrar
