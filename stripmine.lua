function dig_column()
    local pass = false
    while not pass do
        turtle.dig()
        pass = turtle.forward()
    end
    turtle.digUp()
    turtle.digDown()
end

function strip(len)
    turtle.refuel()
    print("Refueling...")

    for i = 1, len do
        dig_column()
        print("Stripping... Progress: " .. i .. "/" .. len)
    end

    turtle.turnRight()
    turtle.turnRight()
    turtle.select(2)

    for i = 1, len do
        turtle.forward()
        
        if i % 10 == 0 then
            turtle.placeDown()
        end
    end
end

print("Beginning stripmine.lua")
print("Input your desired length for the stripmine:")
local length = tonumber(io.read())

strip(length)