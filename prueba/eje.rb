def adjust_text1(str,num)
    str+=" "*num
    x = str.chars
    x = x.reject.with_index{|element,index| index >=(num) && index <= str.length}
    p x.join("")
end

def create_hash(tem, alt, press) 
   {"temperature"=> "#{tem}","altitude"=>"#{alt}","pressure"=>"#{press}"}
    
  end
  create_hash(10, 10,20)