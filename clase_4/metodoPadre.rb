#Para llamar un metodo de igual nombre en la clase padre se usa "super"

class Employee
    def initialize
        p "hola"
    end
    def salary
      puts "Calculando salario"
    end
  end
  
  class Manager < Employee
    def initialize
        super
        p "holaaaaa"
        
    end
    def salary
      
      puts "Calculando bonos"
      super
      
    end
  end

a = Manager.new
a.salary