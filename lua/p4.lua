function isPal(n)
    y = tostring(n)
    size = 0
    if(string.len( y ) % 2 == 0) then
        size = string.len( y ) / 2
    else
        size = (string.len( y ) / 2) - 0.5
    end
    for i = 0, size do
        if(not(string.sub(y, i + 1, i + 1) == string.sub(y, string.len(y) - i, string.len(y) - i))) then
            return false
        end
    end
    return true
end
largest = 0
for x = 999, 1, -1 do 
    for y = 999, 1, -1 do
        if(x * y > largest) then
            if(isPal(x * y)) then
                largest = x * y
            end
        end
    end
end
print(largest)
