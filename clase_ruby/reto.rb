class Reto
   
    def multiplicar(array,value)
        array.each_with_index {|element,index| array[index]=element*value}
        array
    end

end
retoinst = Reto.new

puts retoinst.multiplicar([1,2,3],20)