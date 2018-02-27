class Cartera
    def initialize()
        @saldo=0
        @in_egresos=[]
    end
    def ingresar(num,month)
        @numero = validar_num(num)
        if @numero != -1

            @saldo+=@numero
            @fecha = Time.now
            @mes = validar_mes(month)
            if @mes != 0
                @in_egresos.push({"type"=> "ingreso","numero"=> "#{@numero}","fecha"=> "#{@fecha}", "mes"=> "#{@mes}"})
            end
        end
    end
    def validar_num(num)
        if(num.is_a?(Integer)&& num > 0)
            num
        else
            puts "ingreso mal el valor de dinero"
            -1
        end
    end
    def validar_mes(month)
        if month.is_a?(Integer) && month>=1 && month<=12
            month
        else
            puts "ingreso el mes incorrectamente"
            0
        end

    end
    def sacar(num,month)
        @numero = validar_num(num)
        
        if @numero != -1
            if(@numero<@saldo)
                @saldo-=@numero
                @fecha = Time.now
                @mes = validar_mes(month)
                if @mes != 0
                    @in_egresos.push({"type"=> "egreso","numero"=> "-#{@numero}","fecha"=> "#{@fecha}", "mes"=> "#{@mes}"})
                end
            else
                puts "no se puede retirar ese monto"
            end
        end
    end
    def mostrarHistorial
        @in_egresos.each do |element|
            puts "saco: #{element["numero"]} en la fecha: #{element["fecha"]}"
        end
        
    end
    def mostrarIngresos(month)
        @in_egresos.each do |element|
            if(element["type"]=="ingreso")
                if(element["mes"].to_i==month.to_i)
                    puts "ingreso: #{element["numero"]} en la fecha: #{element["fecha"]}"
                end
            end

          end
    end
    def mostrarGastos(month)
        @in_egresos.each do |element|
            if(element["type"]=="egreso")
                if(element["mes"].to_i==month.to_i)
                    puts "saco: #{element["numero"]} en la fecha: #{element["fecha"]}"
                end
            end
        end

    end
end

a = Cartera.new

a.ingresar(1000,1)
a.sacar(200,1)
a.sacar(100,2)
a.mostrarGastos(2)
a.mostrarGastos(1)
a.mostrarIngresos(1)
puts "--------"
a.mostrarHistorial()