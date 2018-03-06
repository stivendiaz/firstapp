require 'json'
load 'orden.rb'  

module Caja
    class Caja < Orden::Orden
        
        def initialize
            super
            @pagadas=[]
        end
        def eliminar_orden(cod)
            @orden.each_whit_index do |element,index|
                if (element["cod"] ==cod)
                    @pagadas.push(element)
                    puts "Orden eliminada: codigo: #{element["cod"]} eliminada"
                    @orden.delete_at(index)
                    File.write("orden.json",@orden.to_json)
                    cargar()
                end
            end
        end
        def pagadas
            @pagadas.each do |element|
                puts "Orden con codigo: #{element["cod"]} pago:"
                    element["hash"].each do |e|
                        puts "codigo: #{e["codigo"]} nombre:#{e["nombre"]} : #{e["precio"]}"
                    end
            end
        end

        def recaudo
            acum=0
            @pagadas.each do |element|
                    element["hash"].each do |e|
                    acum += e["precio"]
                    end
            end
        end


        
    end
end