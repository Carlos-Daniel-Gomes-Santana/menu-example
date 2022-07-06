local intro = {}

function intro.create_scene()
    local info = love.graphics.newText(
        Fonts.big_font,
        "OPA"
    )


    love.graphics.draw(
        info,
        (Width - info:getWidth())/2,
        (Height - info:getHeight())/2
    )
end

return intro