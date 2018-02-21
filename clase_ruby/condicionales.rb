
def bool(value)
value= gets.chomp.to_boolean
if(value=="true")
    true
else
    false
end
end

puts "it´s raining?"

puts "saca sombrilla" if rain
puts "sigue normal" unless rain
