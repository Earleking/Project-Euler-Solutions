
i = 0
a = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"} -- array of numbers
holder = {}
for firstN, aS in pairs(a) do
    table.insert(holder, a[firstN])
    table.remove(a, firstN) --remove current element from a
    for secN, bS in pairs(a) do
        table.insert(holder, a[secN])
        table.remove(a, secN)
        for thirdN, cS in pairs(a) do
            table.insert(holder, a[thirdN])
            table.remove(a, thirdN)
            for fourthN, dS in pairs(a) do
                table.insert(holder, a[fourthN])
                table.remove(a, fourthN)
                for fifthN, eS in pairs(a) do
                    table.insert(holder, a[fifthN])
                    table.remove(a, fifthN)
                    for sixN, fS in pairs(a) do
                        table.insert(holder, a[sixN])
                        table.remove(a, sixN)
                        for sevenN, gS in pairs(a) do
                            table.insert(holder, a[sevenN])
                            table.remove(a, sevenN)
                            for eightN, hS in pairs(a) do
                                table.insert(holder, a[eightN])
                                table.remove(a, eightN)
                                for nineN, iS in pairs(a) do
                                    table.insert(holder, a[nineN])
                                    table.remove(a, nineN)
                                    for tenN, jS in pairs(a) do
                                        table.insert(holder, a[tenN])
                                        i = i + 1
                                        if(i == 2) then
                                            print(holder[1]..holder[2]..holder[3]..holder[4]..holder[5]..holder[6]..holder[7]..holder[8]..holder[9]..holder[10])
                                            os.exit()
                                        end
                                        
                                    end
                                    table.insert(a, 1, holder[9]) -- readd element
                                    table.remove(holder, 9)
                                end
                                table.insert(a, 1, holder[8])
                                table.remove(holder, 8)
                            end
                            table.insert(a, 1, holder[7])
                            table.remove(holder, 7)
                        end
                        table.insert(a, 1, holder[6])
                        table.remove(holder, 6)
                    end
                    table.insert(a, 1, holder[5])
                    table.remove(holder, 5)
                end
                table.insert(a, 1, holder[4])
                table.remove(holder, 4)
            end
            table.insert(a, 1, holder[3])
            table.remove(holder, 3)
        end
        table.insert(a, 1, holder[2])
        table.remove(holder, 2)
    end
    table.insert(a, 1, holder[1])
    table.remove(holder, 1)
end