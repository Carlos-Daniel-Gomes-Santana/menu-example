local class = require "modules/classic"
local Text = class:extend()

function Text:new(font, text, color)
    self.text = love.graphics.newText(
        font,
        {text, color}
    )
    self.width, self.height = self.text:getDimensions()
end

function Text:draw(x, y)
    love.graphics.draw(
        self.text,
        (x or 0),
        (y or 0)
    )
end

function Text:__tostring()
    return self.text
end

return Text
