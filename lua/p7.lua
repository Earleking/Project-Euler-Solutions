function isPrime(n)--will check if n is prime
    lim = math.sqrt( n ) --sqrt of n is the largest possible factor pair of n
    for i = 2, lim - 1 do 
        if(n % i == 0) then
            return false
        end
    end
    return true --no factors found, is prime
end

counter = 1--start at one so currentN can start at 3
--this allows me to increment my check by 2 as 2 is the only prime
--this halfs search time
currentN = 3
while(counter < 10000) do
    if(isPrime(currentN)) then
        counter = counter + 1
    end

    currentN = currentN + 2
end
print(currentN - 3)