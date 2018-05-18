function isPrime(n)
    limit = math.sqrt(n)
    for i = 2, limit + 1 do 
        if(n % i == 0) then
            return false
        end
    end
    return true
end

lN = 600851475143 
for i = 2, lN/2 do
    if(lN % i == 0) then --is factor
        if(isPrime(lN / i)) then --first prime found is largest prime
            print(lN / i)
            os.exit()
        end
    end
end
