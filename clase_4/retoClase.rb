class Telefono
    def initialize()
        @duracion=0
        @historial=[]
    end
    def llamar
        puts "ingrese el numero"
        @numero = gets.chomp
        @now = Time.now.to_f
        puts "hola"
        puts "quieres colgar? y"
        colgar1 = gets.chomp
        if(colgar1=="y")
            colgar()
        end
    end
    def colgar
        puts "chao"
        @endd = Time.now.to_f
        @duracion = @endd - @now
        @historial.push({numero: @numero,tiempo: @duracion})
    end
    def mostrarHistorial
        puts @historial
        
    end
end

a = Telefono.new

a.llamar
a.llamar
a.llamar


a.mostrarHistorial
