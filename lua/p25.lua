n1 = 1
n2 = 1
n3 = n1 + n2
i = 3
digits = 12 --number of digits start at 12
--every time n3 is 100 000 000 000 divide by 10 to keep inside 
--while not perfect should be a decent approximation
--be sure to choose a large number so minimal data is lost when dividing
while(digits <= 1000) do
    if(n3 > 100000000000) then
        n3 = n3 / 10--also choose a small divisior to keep data loss minimal
        n2 = n2 / 10
        digits = digits + 1
    end

    n1 = n2
    n2 = n3
    n3 = n1 + n2
    i = i + 1
end
print(i)
