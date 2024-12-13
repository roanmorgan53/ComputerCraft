function digAllDirections()
    turtle.digUp()
    turtle.digDown()
    turtle.turnLeft()
    turtle.dig()
    turtle.turnRight()
    turtle.turnRight()
    turtle.dig()
    turtle.turnLeft()
end

function dig_column()
    -- In order to counter gravel or sand inhibiting movement and the alignment of the turtle, the turtle will dig forward until it can move forward
    local pass = false
    while not pass do
        turtle.dig()
        pass = turtle.forward()
    end
    
    digAllDirections()
    
end

function strip(len)
    turtle.refuel()
    print("Refueling...")

    -- Dig out the column the specified depth
    for i = 1, len do
        dig_column()
        print("Stripping... Progress: " .. i .. "/" .. len)
    end

    -- Turn around and select torces in the second slot
    turtle.turnRight()
    turtle.turnRight()
    turtle.select(2)

    -- Place torches every 10 blocks
    for i = 1, len do
        turtle.forward()
        
        if i % 10 == 0 then
            turtle.placeDown()
        end
    end
end

-- Main
print("Beginning stripmine.lua")
print("*** REMINDER -- Have you put coal in the first slot and torches in the second slot? ***")

print("Input your desired length for the stripmine:")
local length = tonumber(io.read())

strip(length)