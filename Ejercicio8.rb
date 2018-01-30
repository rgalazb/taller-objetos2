class Punto
  attr_reader :x,:y
  attr_writer :x,:y
  def initialize(x,y)
    @x = x
    @y = y
  end
end
num = Random.new
puntos = []
10.times do
  puntos.push(Punto.new(num.rand(-100..100),num.rand(-100..100)))
end
