local menu = {}

function menu.create_scene()
    start = love.graphics.newText(Fonts.mid_font, "START")
    love.graphics.draw(
        start,
        (Width - 210)/2,
        (Height - 75)/2 - 175
    )
    love.graphics.rectangle(
        "line",
        (Width - 210)/2,
        (Height - 75)/2 - 175,
        210,
        75
    )

    options = love.graphics.newText(Fonts.mid_font, "OPTIONS")
    love.graphics.draw(
        options,
        (Width - 210)/2,
        (Height - 75)/2
    )
    love.graphics.rectangle(
        "line",
        (Width - 210)/2,
        (Height - 75)/2,
        210,
        75
    )

    exit = love.graphics.newText(Fonts.mid_font, "EXIT")
    love.graphics.draw(
        exit,
        (Width - 210)/2 + exit:getWidth(),
        (Height - 75)/2 + 175
    )
    love.graphics.rectangle(
        "line",
        (Width - 210)/2,
        (Height - 75)/2 + 175,
        210,
        75
    )
end

return menu