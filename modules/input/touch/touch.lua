local class = require "modules.classic"
local Touch = class:extend()

function Touch:new(name)
    self.name = name
end

return Touch