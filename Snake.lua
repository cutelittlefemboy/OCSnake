local component = require("component")
local term = require("term")

local PlayField = {size = 11, appleLocation = {x = 2, y = 2}, gameOver = false}
local Snake = {direction = "up", size = 3, location = {{x = 7, y = 7}, {x = 7, y = 6}, {x = 7, y = 5}}}

function draw(PlayField, Snake) 
    local gpu = component.gpu
    local offset = {}
    local width, height = component.gpu.getViewport()
    offset.x, offset.y = math.ceil(width / 2 - PlayField.size.x / 2), math.ceil(height / 2 - PlayField.size.y / 2)
    for y = 0, PlayField.size do
        for x = 0, PlayField.size do
            term.setCursor()
        end
    end
end

while not PlayField.gameOver do
    draw(PlayField, Snake)
end