function verify(n)
   for i = 3, 20 do
        if(not(n % i == 0)) then
            return false
        end
    end
    return true
end

cN = 0
while(true) do -- I know I will encounter the exit condition
    cN = cN + 210 --first number with the common factors of 7, 3, 5
    if(verify(cN)) then
        print(cN)
        os.exit()
    end
end
