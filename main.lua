local Rect = require "modules.shapes.rectangle"
local Color = require "modules.color.color"
local Text = require "modules.text.text"
local Button = require "modules.button.button"
local Keyboard = require "modules.input.keyboard.keyboard"

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
button = Button(
    rect_1,
    text_1
)

