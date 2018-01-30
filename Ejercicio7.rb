class Student
  attr_accessor :name, :grade
  def initialize(name,grade)
    @name = name
    @grade= grade
  end
end
nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)
alumnos = []
i = 1
for nombre in nombres
  alumnos.push(Student.new(nombre,i))
  i += 1
end

notas = alumnos.map {|alumno| alumno.grade}
puts notas
