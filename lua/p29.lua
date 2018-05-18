arr = {} -- will be an ordered list
size = 0

function insertToTable(n)
    for i = 1, size do --loop over table array
        if(arr[i] > n) then--if a larger number is found in the table
            table.insert( arr, i, n )--add the number
            size = size + 1
            return
        elseif (arr[i] == n) then --if it is a duplicate return
            return
        end
    end
    table.insert(arr, n) -- if it isn't a duplicate and the largest encountered add it to end
    size = size + 1
end

for a = 2, 100 do 
    for b = 2, 100 do
        cur = math.pow(a, b) --check every combo
        insertToTable(cur) --attempt to insert each one
    end
end

print(size)