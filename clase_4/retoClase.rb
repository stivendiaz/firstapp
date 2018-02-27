class Telefono
    def initialize()
        @duracion=0
        @estado=0
        @historial=[]
    end
    def llamar
        puts "ingrese el numero"
        @numero = gets.chomp
        @now = Time.now.to_f
        @estado = 1
        puts "hola"
        puts "quieres colgar? y"
        colgar1 = gets.chomp
        if(colgar1=="y")
            @estado=0
            colgar()
        end
    end
    def colgar
        if(@estado==0)
            puts "chao"
            @endd = Time.now.to_f
            @duracion = @endd - @now
            @historial.push({"numero"=> "#{@numero}","tiempo": "#{@duracion}"})
        else
            puts "no puedes colgar por que no contestaste"
        end
        
    end
    def mostrarHistorial
        @historial.each do |element|
            if(element["tiempo"]!="null")
               puts "numero: #{element["numero"]} se demoro: #{element["tiempo"]}"
            else
                puts "numero: #{element["numero"]} Mensaje: #{element["mensaje"]}"
            end
        end
        
    end
end

class Celular < Telefono
    def initialize
        @mensaje=""
        super
    end

    def mensaje
        puts "ingrese el numero"
        @numero = gets.chomp
        puts "ingrese el mensaje"
        @mensaje = gets.chomp
        @historial.push({"numero"=> "#{@numero}","mensaje"=> "#{@mensaje}"})
    end



end

a = Celular.new



a.llamar
a.mensaje


a.mostrarHistorial
