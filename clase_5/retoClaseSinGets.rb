class Telefono
    def initialize()
        @duracion=0
        @estado=0
        @historial=[]
    end
    def llamar(tel)
        @numero = tel
        @now = Time.now.to_f
        @estado = 1
        puts "Una tecla para colgar"
        while(colgar1==nil)
            colgar1 = gets.chomp
            if(colgar1!=nil)
                @estado=0
                colgar()
            end
        end
    end
    def colgar
        if(@estado==0)
            puts "chao"
            @endd = Time.now.to_f
            @duracion = @endd - @now
            @historial.push({"type"=> "call","numero"=> "#{@numero}","tiempo"=> "#{@duracion}"})
        else
            puts "no puedes colgar por que no contestaste"
        end
        
    end
    def mostrarHistorial
        @historial.each do |element|
               puts "numero: #{element["numero"]} se demoro: #{element["tiempo"]}"
            end
        
    end
end

class Celular < Telefono
    def initialize
        @mensaje=""
        super
    end

    def mensaje(tel,msj)
        @numero = tel
        @mensaje = msj
        @historial.push({"type"=> "msj","numero"=> "#{@numero}","mensaje"=> "#{@mensaje}"})
    end

    def mostrarHistorial
        @historial.each do |element|
            if(element["type"]=="call")
               puts "numero: #{element["numero"]} se demoro: #{element["tiempo"]}"
            else
                puts "numero: #{element["numero"]} Mensaje: #{element["mensaje"]}"
            end
        end
        
    end