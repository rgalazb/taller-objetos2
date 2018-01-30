 nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

nombre_mas_de_5_letras = nombres.select {|nombre| nombre.size>5}
puts nombre_mas_de_5_letras
puts '---'
nombres_min = nombres.map {|nombre| nombre.downcase}
puts nombres_min
puts '---'
nombres_con_p = nombres.select {|nombre|nombre[0]=='P'}
puts nombres_con_p
puts '---'
cantidad_letras = nombres.map {|nombre|nombre.size}
puts cantidad_letras
