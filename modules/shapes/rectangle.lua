local class = require "modules/classic"
local Rectangle = class:extend()

function Rectangle:new(width, height)
    self.width, self.height = width, height
end

function Rectangle:__tostring()
    return string.format(
        "size: %d x %d",
        self.width,
        self.height
    )
end

function Rectangle:draw(mode, x, y)
    love.graphics.rectangle(
        mode,
        (x or 0),
        (y or 0),
        self.width,
        self.height
    )
end

return Rectangle
