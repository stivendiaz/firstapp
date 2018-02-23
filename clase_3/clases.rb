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
    def inicialize(name)
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




nuevo = Person5.new("stiven")

p nuevo.name

nuevo.name=("StivenBest")

p nuevo.name






