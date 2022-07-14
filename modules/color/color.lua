local class = require "modules/classic"
local Color = class:extend()

function Color:new(red, green, blue, alpha)
    self.const = 0.003921569
    self.red = red or 255
    self.green = green or 255
    self.blue = blue or 255
    self.alpha = alpha or 255
end

function Color:get()
    return {
        self.red*self.const,
        self.green*self.const,
        self.blue*self.const,
        self.alpha*self.const,
    }
end

function Color:__tostring()
    return string.format(
        "RGBA: %d %d %d %d",
        self.red,
        self.green,
        self.blue,
        self.alpha
    )
end

return Color
