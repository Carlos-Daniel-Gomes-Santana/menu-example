local machine = require "modules/statemachine"
local intro = require "scenes/intro"
local menu = require "scenes/menu"

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
    -- Resolution
    Width, Height = love.graphics.getDimensions()
    
    -- Fonts Game
    Fonts = {
        small_font = love.graphics.newFont("font/pixel-font.ttf", 36),
        mid_font = love.graphics.newFont("font/pixel-font.ttf", 56),
        big_font = love.graphics.newFont("font/pixel-font.ttf", 76),
        huge_font = love.graphics.newFont("font/pixel-font.ttf", 96),
    }

    -- Sounds
    Music = love.audio.newSource(
        "audio/menu/SpaceTheme.ogg",
        "static"
    )
    UI_sound = {
        press_intro = love.audio.newSource(
            "audio/UI/MENU B_Select.wav",
            "static"
        ),
        
    }

end

function love.update(dt)
end

function love.draw()
    if fsm.current == "intro_scene" then
        intro.create_scene()
        Music:setLooping(true)
        Music:play()
        if love.keyboard.isDown("space") then
            fsm:menu_scene()
            UI_sound.press_intro:play()
        end
    end

    if fsm.current == "menu_scene" then
        menu.create_scene()
    end
    
end
