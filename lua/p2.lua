t1 = 1
t2 = 1
tc = t1 + t2

sum = 0
while(tc < 4000000) do 
    if(tc % 2 == 0) then
        sum = sum + tc
    end
    t1 = t2
    t2 = tc
    tc = t1 + t2
end

print(sum)