class Cartera
    def initialize()
        @saldo=0
        @in_egresos=[]
        @categorias = []
        
    end
    def ingresar(num,month)
        @numero = validar_num(num)
        if @numero != -1
                @saldo+=@numero
                @fecha = Time.now
                @mes = validar_mes(month)
                if @mes != 0
                    @in_egresos.push({"type"=> "ingreso","numero"=> "#{@numero}","fecha"=> "#{@fecha}", "categoria"=> "#{@categorias}","mes"=> "#{@mes}"})
                end
        end
    end
    def crear_categoria(val)
        @categorias.push(val)
    end
    def buscar_categoria(val)
        @categorias.include?(val)
    end

    def acum_by_categ(mes)
        array=[]
        acum=0
        @categorias.each do |elem|
            a = buscar_by_key(mostrarGastos(mes),"categoria",elem)
            a.each do |el|
               acum += el["numero"]
            end
            array.push({"categoria"=> "#{elem}","valor"=> "#{acum}"})
            acum=0
        end
        array
    end

    def percent_categ()

    



    def validar_num(num)
        if(num.is_a?(Integer)&& num > 0)
            num
        else
            raise ArgumentError.new("ingreso mal el valor de dinero")
            -1
        end
    end
    def validar_mes(month)
        if month.is_a?(Integer) && month>=1 && month<=12
            month
        else
            raise ArgumentError.new("ingreso el mes incorrectamente")
            0
        end

    end
    def sacar(num,month,categ)
        @numero = validar_num(num)
        
        if @numero != -1
            if buscar_categoria(categ)
                @categorias=categ
                if(@numero<@saldo)
                    @saldo-=@numero
                    @fecha = Time.now
                    @mes = validar_mes(month)
                    if @mes != 0
                        @in_egresos.push({"type"=> "egreso","numero"=> "-#{@numero}","fecha"=> "#{@fecha}","categoria"=>"#{@categorias}", "mes"=> "#{@mes}"})
                    end
                else
                   raise ArgumentError.new("no se puede retirar ese monto")
                end
            end
        end
    end
    def mostrarHistorial
        @in_egresos.each do |element|
            puts "#{element["numero"]} en la fecha: #{element["fecha"]}"
        end
        
    end
    def buscar_by_key(array,key,arg)
        array = []
        array.each do |element|
            if(element[key]==arg)
                array.push(element)
            end
        array
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
        array = []
        @in_egresos.each do |element|
            if(element["type"]=="egreso")
                if(element["mes"].to_i==month.to_i)
                    puts "saco: #{element["numero"]} en la fecha: #{element["fecha"]}"
                    array.push({"numero"=> "#{@numero}","fecha"=> "#{@fecha}","categoria"=>"#{@categorias}", "mes"=> "#{@mes}"})

                end
            end
        end

    end
end

a = Cartera.new
a.crear_categoria("perritos")
a.ingresar(1000,1)
a.sacar(200,1,"perritos")
a.sacar(100,2,"perritos")
a.mostrarGastos(2)
a.mostrarGastos(1)
a.mostrarIngresos(1)