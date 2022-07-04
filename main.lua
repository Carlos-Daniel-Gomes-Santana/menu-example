local machine = require "modules/statemachine"

local fsm = machine.create({
    initial = "intro_scene",
    events = {
        { name = "menu_scene", from = "*", to = "menu_scene"},
        { name = "start_game", from = "menu_scene", to = "start_scene"},
        { name = "credit_game", from = "menu_scene", to = "credit_scene"},
        { name = "exit_game", from = "menu_scene", to = "exit_scene"}
    }
})

local function sleep(s)
    local ntime = os.clock() + s/10
    repeat until os.clock() > ntime
end
  

function love.load()
    Color = 1
    
    Fonts = {
        small_font = love.graphics.newFont("font/pixel-font.ttf", 36),
        mid_font = love.graphics.newFont("font/pixel-font.ttf", 56),
        big_font = love.graphics.newFont("font/pixel-font.ttf", 76),
        huge_font = love.graphics.newFont("font/pixel-font.ttf", 96),
    }

    Rainbow = {
        {148*0.004, 0*0.004  , 211*0.004}, -- Violet
        {75*0.004 , 0*0.004  , 130*0.004}, -- Indigo
        {0*0.004  , 0*0.004  , 255*0.004}, -- Blue
        {0*0.004  , 255*0.004, 0*0.004  }, -- Green
        {255*0.004, 255*0.004, 0*0.004  }, -- Yellow
        {255*0.004, 127*0.004, 0*0.004  }, -- Orange
        {255*0.004, 0*0.004  , 0*0.004  }, -- Red
    }

    Text = {Rainbow[Color], "Hello"}
end

function love.update(dt)
    Text[1] = Rainbow[Color]
    Color = Color == 7 and 1 or Color + 1
    sleep(2.3)
end

function love.draw()
    local start_text = love.graphics.newText(
        Fonts.huge_font,
        Text
    )

    love.graphics.draw(start_text, 100, 100)
end
