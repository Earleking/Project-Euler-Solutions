
runningTotal = 0
for i = 0, 1000 do
    if(i % 5 == 0 or i % 3 == 0) then
        runningTotal = runningTotal + i
    end
end
print(runningTotal)