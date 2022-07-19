local class = require "modules.classic"
local Joystick = class:extend()

function Joystick:new(name)
    self.name = name
end

return Joystick
