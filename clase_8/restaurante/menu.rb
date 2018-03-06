require 'json'

module Menu
    class Menu
        def initialize
            @menu= []
            cargar()
        end
        def existe?()
             (File.file?("menu.json")) ? "no existe" : "existe"
        end
        def cargar()
            @menu = JSON.parse(File.read('menu.json'))
        end
        def mostrar()
            puts "Welcome to mandingas"
            puts "this is the menu:"
            @menu.each do |elem|
                puts "#{elem["nombre"]} : #{elem["precio"]} disponible \n" if elem["disponible"]
                puts "#{elem["nombre"]} : #{elem["precio"]} no disponible \n" unless elem["disponible"]
            end
        end
        def agregar(cod,nom,pre,disp)
            @menu.each do |elem|
                if(elem["codigo"]!=cod)
                    @menu.push({"codigo"=>cod, "nombre"=>"#{nom}", "precio"=>"#{pre}", "disponible"=>"#{disp}"})   
                    File.write("menu.json", @menu.to_json)
                    cargar()
                end
            end
        end

        def buscar(key,arg)
            str="No encontrado"
            @menu.each do |elem|
                 if(elem[key]==arg)
                    str = elem
                end
            end
            str
        end
    end
end
