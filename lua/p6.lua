function squareOfSums(n)
    sum = 0
    for i = 1, n do
        sum = sum + i 
    end
    return sum * sum
end

function sumOfSquares(n)
    sum = 0
    for i = 1, n do
        sum = sum + (i * i)
    end
    return sum
end

print(squareOfSums(100) - sumOfSquares(100))