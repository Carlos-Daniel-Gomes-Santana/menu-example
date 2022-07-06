local intro = {}

function intro.create_scene()
    -- Texts
    local title = love.graphics.newText(
        Fonts.huge_font,
        "Hello World"
    )
    local info = love.graphics.newText(
        Fonts.mid_font,
        "Press space to continue"
    )

    -- Adding in the scene
    love.graphics.draw(
        title,
        (Width - title:getWidth())/2,
        (Height - title:getHeight())/2
    )

    love.graphics.draw(
        info,
        (Width - info:getWidth())/2,
        Height - info:getHeight()
    )
    
end

return intro