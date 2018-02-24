# Clase Padre
class Figure
    attr_accessor :stroke, :fill
  end
  
  # Hereda de Figure
  class Circle < Figure
    attr_accessor :radius

    def to_s
        "esto es un circulo con radio #{@radius}"
    end
  end
  
  # Hereda de Figure
  class Square < Figure
    attr_accessor :side
    #...
  end
  
  # Hereda de Figure
  class Triangle < Figure
    attr_accessor :base, :height
  end

  class Cylinder < Circle
    attr_accessor :legth
  end



  c1 = Cylinder.new
  c1.fill = "red"
  c1.radius=4

  puts c1.to_s