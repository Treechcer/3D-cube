_G.love = require("love")

function love.load()

end

function love.update(dt)
    --[[

    print("test");
    io.flush();
    -- this prints out "test" and updates it in VSC because for some reason it doesn't normaly
    ]]

    if love.keyboard.isDown("space") then
        print("space");
        io.flush();
    end
end

function love.draw()
    -- love.graphics.print("test", 25, 25); --epic
    x = 100;

    drawScaleableCube(100,1/2)

end

function drawScaleableCube(x, scale)
    y = x;

    love.graphics.line(x,y,2 * (x/scale),y);
    love.graphics.line(x,y,x,2 * (y/scale));

    love.graphics.line(2 * (x/scale),y,2 * (x/scale),2 * (y/scale));
    love.graphics.line(x,2 * (y/scale),2 * (x/scale),2 * (y/scale));

    love.graphics.line(2 * (x/scale),2 * (y/scale),2 * (x/scale) + (x/4),y + (3 * ((y/scale)/4)));
    love.graphics.line(x,2 * (y/scale),(x/scale) - (x/4),y + (3 * ((y/scale)/4)));

    love.graphics.line(x,y,(x/scale) + (x/4), y - ((y/scale)/4));
    love.graphics.line(2 * (x/scale),y,2 * x + ((x/scale)/4),(y/scale) + (y/4));

    --love.graphics.line((x/scale) + (x/4),(y/scale) - (y/4),2 * x + (x/scale/4),y - (y/scale/4));
    --love.graphics.line(2 * (x/scale) + (x/4),(y/scale) - (y/4),2 * x + (x/scale/4),y + (3 * (y/scale/4)));

    --love.graphics.line((x/scale) + (x/4),y + (3 * (y/scale/4)),x + (x/scale/4), y - (y/scale/4));
    --love.graphics.line((x/scale) + (x/4),2 * y - (y/scale/4), 2 * x + (x/scale/4),2 * y - (y/scale/4));
end

function drawCube(x)
    y = x;

    love.graphics.line(x,y,2 * x ,y);
    love.graphics.line(x,y,x,2 * y);

    love.graphics.line(2 * x,y,2 * x,2 * y);
    love.graphics.line(x,2 * y,2 * x,2 * y);

    love.graphics.line(2 * x,2 * y,2 * x + (x/4),y + (3 * (y/4)));
    love.graphics.line(x,2 * y,x + (x/4),y + (3 * (y/4)));

    love.graphics.line(x,y,x + (x/4),y - (y/4));
    love.graphics.line(2 * x,y,2 * x + (x/4),y - (y/4));

    love.graphics.line(x + (x/4),y - (y/4),2 * x + (x/4),y - (y/4));
    love.graphics.line(2 * x + (x/4),y - (y/4),2 * x + (x/4),y + (3 * (y/4)));

    love.graphics.line(x + (x/4),y + (3 * (y/4)),x + (x/4), y - (y/4));
    love.graphics.line(x + (x/4),2 * y - (y/4), 2 * x + (x/4),2 * y - (y/4));
end

--[[
function love.keypressed(key)
    print(key);
    io.flush();
end
]]