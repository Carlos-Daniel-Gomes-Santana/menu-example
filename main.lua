local Rect = require "modules/shapes/rectangle"
local Color = require "modules/color/color"
local Text = require "modules/text/text"

font = love.graphics.newFont(
    "modules/font/pixel-font.ttf",
    57
)
color_1 = Color()
text_1 = Text(
    font,
    "ABC",
    color_1:get()
)
rect_1 = Rect(150, 65)

local width, height = love.graphics.getDimensions()
function love.draw()
    -- this operation will create a simple button for UI
    rect_1:draw(
        "line",
        -- (width of screen size - half of rect size)/2
        width/2 - rect_1.width/2,
        -- (height of screen size - half of rect size)/2
        height/2 - rect_1.height/2
    )
    text_1:draw(
        -- (width of screen size - half of text size)/2 
        width/2 - text_1.width/2,
        -- (height of screen size - half of text size)/2
        height/2 - text_1.height/2
    )
end
