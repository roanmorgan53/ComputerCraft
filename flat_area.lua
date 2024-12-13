-- Script that tells a mining turtle to clear out a flat area of defined length and width
function flatten(length, width)

    for i = 1, width do
        -- Dig out the row the depth
        for j = 1, length do
            turtle.dig()
            turtle.forward()
        end
        
        -- Turn, dig, and get ready to start the next column =
        if not width == 1 then
            turtle.turnLeft()
            turtle.dig()
            turtle.forward()
            turtle.turnLeft()
        else 
            turtle.turnLeft()
            turtle.turnLeft()
        end
    end
end

-- Main
print("Beginning flatten script")
print("***PLACE THE TURTLE AT THE BOTTOM RIGHT OF THE AREA YOU DESIRE TO CLEAR***")
print("Did you put fuel in the first slot?\n")

print("Input your desired length for the flat area:")
local length = tonumber(io.read())
print("Input your desired width for the flat area:")
local width = tonumber(io.read())

flatten(length, width)


