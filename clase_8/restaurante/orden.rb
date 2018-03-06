require 'json'

module Orden
    class Orden
        def initialize
            @orden= []
            @indi=[]
        end
        def existe?()
            (File.file?("orden.json")) ? "no existe" : "existe"
        end
        def cargar()
            @orden = JSON.parse(File.read('orden.json'))
        end
        def agregar_indi(cod,nom,pre)
            @indi.push({"codigo"=>cod, "nombre"=>nom, "precio"=>pre})  
        end
        
        def agregar_orden(cod)
            @orden.push({"cod"=>cod,"hash"=>@indi})
            File.write("orden.json", @orden.to_json)
            cargar()
        end
        def cola()
            @orden.each do |element|
                puts "Orden con codigo: #{element["cod"]} ordeno:"
                    element["hash"].each do |e|
                        puts "codigo: #{e["codigo"]} nombre:#{e["nombre"]} : #{e["precio"]}"
                    end
            end
        end
        def total_orden(cod)
            total=0
            @orden.each do |element|
                if (element["cod"] ==cod)
                puts "Orden con codigo: #{element["cod"]} ordeno:"
                element["hash"].each do |elem|
                        puts "codigo: #{elem["codigo"]} nombre:#{elem["nombre"]} : #{elem["precio"]}"
                        total+=elem["precio"]
                    end
                    puts "el total de la orden es: #{total}"
                end
            end
        end
    end
end