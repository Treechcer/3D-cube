_G.love = require("love")

function love.load()

end

function love.update(dt)
    --[[

    print("test");
    io.flush();
    -- this prints out "test" and updates it in VSC because for some reason it doesn't normaly
    ]]
end

function love.draw()
    -- love.graphics.print("test", 25, 25); --epic

    drawCube(100);
    drawScaleableCube(300,300,100);

end

function drawScaleableCube(x, y, size)
    -- first square
    love.graphics.line(x,y,x+size,y);
    love.graphics.line(x,y,x,y+size);
    love.graphics.line(x+size,y,x+size,y+size);
    love.graphics.line(x,y+size,x+size,y+size);

    -- second square

    love.graphics.line(x+(size/2),y-(size/2),x+(size/2),y+(size/2));
    love.graphics.line(x+(size/2)+size,y-(size/2),x+(size/2)+size,y+(size/2));
    love.graphics.line(x+size+size/2,y-size/2,x+size/2,y-size/2);
    love.graphics.line(x+size+size/2,y+size/2,x+size/2,y+size/2);

    -- 3DS effect
    love.graphics.line(x+(size/2),y-(size/2),x,y);
    love.graphics.line(x+size+(size/2),y-(size/2),x+size,y);
    love.graphics.line(x+(size/2),y+(size/2),x,y+size);
    love.graphics.line(x+(size/2)+size,y+(size/2),x+size,y+size);
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