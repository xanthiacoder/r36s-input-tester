require "love-ansi"

-- load scene files here
local scene = {}
scene[997] = require "scene-997" -- io test
scene[998] = require "scene-998" -- io test (modified)



-- define local variables here [start]
scene.current = 997
scene.previous = 998


-- define global variables used in all scenes
bgart = {}


-- define global variables, used in scene-997
triggerReport = ""
frameElapsed = 0 -- to check on love.update

-- input states [start]
dpadState = {}
fbtnState = {}
lstkState = {}
rstkState = {}
bbtnState = {}
miscState = {}
for i = 1,4 do
	dpadState[i] = ".."
	fbtnState[i] = ".."
	lstkState[i] = ".."
	rstkState[i] = ".."
	bbtnState[i] = ".."
	miscState[i] = ".."
end
-- L3 and R3 buttons added (requires manual edit on gptokeyb file on console)
miscState[5] = ".."
miscState[6] = ".."
-- input states [end]

-- define variables here [end]


-- one-time setup of game / app, loading assets
function love.load()
    mainFont = love.graphics.newFont("menlo.ttf", 18)
    -- initialise all scenes
	scene[997].init()
end


-- load scene input schema here
scene[scene.current].input()

function love.quit()
  	-- This will be printed to the console on quit
  	print("Closing app normally with ESC")
end

-- to make game state changes frame-to-frame
function love.update(dt)
    frameElapsed = frameElapsed + 1
end


-- to render game state onto the screen, 60 fps
function love.draw()
	-- load scene draw state here
	love.graphics.draw(bgart[scene.current], 0, 0)
	scene[scene.current].draw()
end