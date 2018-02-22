array = IO.readlines("students.txt")

while (array.length !=0)
    array.shuffle!
    p array.pop(2)
end

