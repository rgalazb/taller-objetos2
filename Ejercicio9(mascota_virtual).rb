class MyPet
  def initialize name
    @name = name
    @sleep = false
    @satisfied = 10 #  Esta lleno
    @fullIntestine = 0 # No necesita ir
    puts @name + '  nace  '
  end
  def hungry?
    if @satisfied == 0
      true
    else
      false
    end
  end
  def needToGo?
    if @fullIntestine == 10
      true
    else
      false
    end
  end
  def timeLapse
    if @satisfied > 0
      #  Mueve el alimento del estomago al intestino.
      @satisfied      = @satisfied      - 1
      @fullIntestine  = @fullIntestine  + 1
    else  #  Nuestro mascota esta hambrienta!
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts '¡' + @name + ' esta hambriento!  En su desesperacion, ¡Murio de Hambre!'
      exit  #  Sale del programa.
    end

    if @fullIntestine  >= 10
      @fullIntestine  = 0
      puts '¡Uy!  ' + @name + ' tuvo un accidente...'
    end

    if self.hungry?
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts 'El estomago de ' + @name + 'retumba...'
    end

    if self.needToGo?
      if @sleep
        @sleep = false
        puts 'Se despierta de repente!'
      end
      puts @name + ' hace la danza del baño...'
    end
  end
  def walk
    puts 'Haces caminar a ' + @name + '.'
    @satisfied -= 2
    @fullIntestine  = 2
    self.timeLapse
  end
  def eat
    @satisfied += 1
    self.timeLapse
  end
  def go_sleep
    @sleep = true
    self.timeLapse
    @fullIntestine = 0
  end
end

def menu
  puts 'elija la opción'
  puts '1: alimentar'
  puts '2: hacer dormir'
  puts '3: salir a caminar'
  opc = gets.chomp.to_i
end

mascota = MyPet.new('Chico Terry')

while true
  opc = menu
  case opc
  when 1
    mascota.eat
  when 2
    mascota.go_sleep
  when 3
    mascota.walk
  else
    puts 'elija una opción valida'
  end
end
