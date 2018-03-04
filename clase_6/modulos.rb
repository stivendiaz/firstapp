

#Creamos el modulo
module MyModule
    MAX_CONNECTIONS = 5
  
    def method_one
    end
  
    def method_two
    end
  
    class ThingOne
        def say_hello
            p "hello"
        end
    end
  
    class ThingTwo
        def say_hello
            p "hello"
        end
    end
end

class Person
    include MyModule
  
    def initialize
      puts MAX_CONNECTIONS # no hay necesidad de agregar el prefijo MyModule::
      @b = ThingOne.new # no hay necesidad de agregar el prefijo MyModule::
    end
    def hola
        
        @b.say_hello
    end
  end


a = Person.new 
a.hola


#-------------#

#anidando modulos

module System
    module Currency
      class Dollar
        def say_hello
            p "hello"
        end

      end
    end
  end

b = System::Currency::Dollar.new
b.say_hello
