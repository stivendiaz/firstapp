require 'json'
load 'orden.rb' 
load 'caja.rb' 
load 'menu.rb' 

class Restaurante
    include Orden
    include Caja
    include Menu

    def initialize
        @orden = Orden.new
        @caja = Caja.new
        @menu = Menu.new
    end

    def cargar_todo()
        @orden.cargar
        @caja.cargar
        @menu.cargar
    end

    def ordenar(nom)
        if @menu.buscar("nombre",nom) != "No encontrado"
            




        
    end
  
end
