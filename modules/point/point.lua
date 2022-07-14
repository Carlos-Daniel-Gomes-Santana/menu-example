local class = require "modules/classic"
local Point = class:extend()

function Point:new(x, y)
  self.x = x or 0
  self.y = y or 0
end

function Point:__tostring()
  return string.format(
    "<%f %f>",
    self.x,
    self.y
  )
end

function Point:draw_line(point)
  function love.draw()
    love.graphics.line(
      self.x,self.y,
      point.x, point.y
    )
  end
end

return Point