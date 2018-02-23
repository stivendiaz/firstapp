#puts File.read("texto.txt")

#array = IO.readlines("texto.txt")

#array.each{|x|puts x}

#verificamos si existe un archivo con operador ternario


puts File.file?("texto.txt")?"existe":"no existe"