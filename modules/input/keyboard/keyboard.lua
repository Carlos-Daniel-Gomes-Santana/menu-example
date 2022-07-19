local class = require "modules.classic"
local Keyboard = class:extend()

function Keyboard:new(name)
    self.name = name
end

return Keyboard
