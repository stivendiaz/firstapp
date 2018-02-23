class Sayhello
    def hello
        p "hello!"
    end
end

#Metodos privados

class Person
    private
    def secret_method
        p "esto es algo privado"
    end
end

#Inicializar

class Person2
    def initialize(name)
        p "esto es algo privado"
    end
end

#Atributos 

class Person3
    def initialize(name)
        @name = name
    end

    def greet(other_person_name)
       p "hola #{other_person_name}, me llamo #{@name}"
    end
end

#get y set

class Person4
    def initialize(name)
        @name = name
    end

    def greet(other_person_name)
       p "hola #{other_person_name}, me llamo #{@name}"
    end

    def name()
        @name
    end

    def name(name)
        @name= name
    end
end

# podes acceder a los atributos desde afuera (ponerlos publicos) con atrr_accessor: leer y escribir
# metodos attr_reader y attr_writer solo leer y solo escribircd..

class Person5
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def greet(other_person_name)
       p "hola #{other_person_name}, me llamo #{@name}"
    end
end

#nuevo = Person5.new("stiven")

#p nuevo.name

#nuevo.name=("StivenBest")

#p nuevo.name



#METODOS Y ATRIBUTOS DE CLASE
# como utilizar self: sirve para definir un metodo o variable de clase

# Metodos de clase:

class Person6
    def self.metodoDeClase()
        puts "este es un metodo de clase "
    end

end

#Variables de clase
class Person7
    @@people_count=0
    def initialize
        @@people_count+=1
    end
    def self.people_count
        @@people_count
    end

end

Person7.new
Person7.new
Person7.new
p Person7.people_count






