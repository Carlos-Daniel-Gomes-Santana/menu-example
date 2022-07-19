local class = require "modules/classic"
local Button = class:extend()

function Button:new(rectangle, text)
    self.rectangle = rectangle
    self.text = text
end

function Button:draw(mode, x, y)
    local width, height = love.graphics.getDimensions()
    self.rectangle:draw(
        "line",
        x - self.rectangle.width/2,
        y - self.rectangle.height/2
    )
    self.text:draw(
        x - self.text.width/2,
        y - self.text.height/2
    )
end

return Button
