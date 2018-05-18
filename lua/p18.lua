a = {{}} -- the inital array
a = {{75},
{95, 64},
{17, 47, 82},
{18, 35, 87, 10},
{20, 04, 82, 47, 65},
{19, 01, 23, 75, 03, 34},
{88, 02, 77, 73, 07, 63, 67},
{99, 65, 04, 28, 06, 16, 70, 92},
{41, 41, 26, 56, 83, 40, 80, 70, 33},
{41, 48, 72, 33, 47, 32, 37, 16, 94, 29},
{53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14},
{70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57},
{91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48},
{63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31},
{04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23}}
b = {{}}-- b will hold the running totals in each cell
numbOfRows = 0
for r, rows in pairs(a) do --copy a to b
    table.insert( b, {} )
    for c, col in pairs(a[r]) do
        table.insert( b[r], a[r][c] )
    end
    numbOfRows = numbOfRows + 1
end


for row = 1, numbOfRows - 1 do --go through each row
    for i, col in pairs(a[row]) do -- go through each element in the row
        --first go left
        if(b[row][i] + a[row + 1][i] > b[row + 1][i]) then --see if this is a better path
            b[row + 1][i] = b[row][i] + a[row + 1][i] --if it is replace the value
        end
        --then go right
        if(b[row][i] + a[row + 1][i + 1] > b[row + 1][i + 1]) then --see if this is a better path
            b[row + 1][i + 1] = b[row][i] + a[row + 1][i + 1] --if it is replace the value
        end
    end
end

largest = 0
for i, col in pairs(b[numbOfRows]) do -- search bottom row for largest element
    if(b[numbOfRows][i] > largest) then
        largest = b[numbOfRows][i]
    end
end
print(largest)