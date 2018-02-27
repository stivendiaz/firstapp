class Cartera
    def initialize()
        @historial=[]
        @numero=0
        @mes=0
        @saldo=0
        @fecha=""
        @ingresos=[]
        @egresos=[]
    end
    def ingresar
        puts "ingrese el monto de dinero"
        @numero = validar_num(gets.chomp)
        @saldo+=@numero
        @fecha = Time.now
        puts "ingrese el mes"
        @mes = validar_mes(gets.chomp)
        @historial.push({"numero"=> "+#{@numero}","fecha"=> "#{@fecha}", "mes"=> "#{@mes}"})
        @ingresos.push({"numero"=> "#{@numero}","fecha"=> "#{@fecha}", "mes"=> "#{@mes}"})
    end
    def validar_num(num)
        if(num.is_a?(Integer))
            num
        else
            validar_num(gets.chomp)
        end
    end
    def validar_mes(month)
        if month.is_a?(Integer) && month>=1 && month<=12
            month
        else
            puts "ingrese el mes correctamente"
            validar_mes(gets.chomp)
        end

    end
    def sacar
        puts "ingrese el monto de dinero"
        @numero = validar_num(gets.chomp)
        if(@numero<@saldo)
            @saldo-=@numero
            @fecha = Time.now
            puts "ingrese el mes"
            @mes = validar_mes(gets.chomp)
            @egresos.push({"numero"=> "-#{@numero}","fecha"=> "#{@fecha}", "mes"=> "#{@mes}"})
            @historial.push({"numero"=> "#{@numero}","fecha"=> "#{@fecha}", "mes"=> "#{@mes}"})
        else
            puts "no se puede retirar ese monto"
        end
    end
    def mostrarHistorial
        puts @historial
        
    end
    def mostrarIngresos(month)
        @ingresos.each do |element|
            if(element["mes"].to_i==month.to_i)
                puts "ingreso: #{element["numero"]} en la fecha: #{element["fecha"]}"
            end

          end
    end
    def mostrarGastos(month)
        @egresos.each do |element|

            
            if(element["mes"].to_i==month.to_i)
                puts "saco: #{element["numero"]} en la fecha: #{element["fecha"]}"
            end
        end

    end
end

a = Cartera.new

a.ingresar
a.sacar
a.sacar
a.mostrarGastos(2)
a.mostrarGastos(1)