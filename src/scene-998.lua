-- scene-998
-- scene name : io test - modified

local K = {}

function K.input()
	-- R36S default Love2d keymapping [start]
	-- detecting key pressed
function love.keypressed( key, scancode, isrepeat )

   if scancode == "w" then
      -- D-Pad UP pressed
      triggerReport = "D-Pad UP pressed"
      dpadState[1] = "XX"
   elseif scancode == "a" then
      -- D-Pad LEFT pressed
      triggerReport = "D-Pad LEFT pressed"
      dpadState[2] = "dn"
   elseif scancode == "s" then
      -- D-Pad DOWN pressed
      triggerReport = "D-Pad DOWN pressed"
      dpadState[3] = "dn"
   elseif scancode == "d" then
      -- D-Pad RIGHT pressed
      triggerReport = "D-Pad RIGHT pressed"
      dpadState[4] = "dn"
   elseif scancode == "space" then
      -- Button X pressed
      triggerReport = "Button X pressed"
      fbtnState[1] = "dn"
   elseif scancode == "b" then
      -- Button Y pressed
      triggerReport = "Button Y pressed"
      fbtnState[2] = "dn"
   elseif scancode == "lshift" then
      -- Button B pressed
      triggerReport = "Button B pressed"
      fbtnState[3] = "dn"
   elseif scancode == "z" then
      -- Button A pressed
      triggerReport = "Button A pressed"
      fbtnState[4] = "dn"
   elseif scancode == "escape" then
      -- SELECT pressed
      triggerReport = "SELECT pressed"
      miscState[1] = "dn"
   elseif scancode == "return" then
      -- START pressed
      triggerReport = "START pressed"
      miscState[2] = "dn"
   elseif scancode == "volumeup" then
      -- VOLUME UP pressed
      triggerReport = "Volume UP pressed"
      miscState[3] = "dn"
   elseif scancode == "volumedown" then
      -- VOLUME DOWN pressed
      triggerReport = "Volume DOWN pressed"
      miscState[4] = "dn"
   elseif scancode == "up" then
      -- L-Stick UP
      triggerReport = "L-Stick UP pressed"
      lstkState[1] = "dn"
   elseif scancode == "left" then
      -- L-Stick LEFT
      triggerReport = "L-Stick LEFT pressed"
      lstkState[2] = "dn"
   elseif scancode == "down" then
      -- L-Stick DOWN
      triggerReport = "L-Stick DOWN pressed"
      lstkState[3] = "dn"
   elseif scancode == "right" then
      -- L-Stick RIGHT
      triggerReport = "L-Stick RIGHT pressed"
      lstkState[4] = "dn"
   elseif scancode == "l" then
      -- Back L1 pressed
      triggerReport = "Back L1 pressed"
      bbtnState[1] = "dn"
   elseif scancode == "x" then
      -- Back L2 pressed
      triggerReport = "Back L2 pressed"
      bbtnState[2] = "dn"
   elseif scancode == "r" then
      -- Right R1 pressed
      triggerReport = "Back R1 pressed"
      bbtnState[3] = "dn"
   elseif scancode == "y" then
      -- Right R2 pressed
      triggerReport = "Back R2 pressed"
      bbtnState[4] = "dn"
   elseif scancode == "1" then
      -- L-Stick L3 pressed, edit gptokeyb for L3 = "1"
      triggerReport = "L-Stick L3 pressed"
      miscState[5] = "dn"
   elseif scancode == "2" then
      -- R-Stick R3 pressed, edit gptokeyb for R3 = "2"
      triggerReport = "R-Stick R3 pressed"
      miscState[6] = "dn"
   end
end

-- detecting key released
function love.keyreleased( key, scancode )

   if scancode == "w" then
      -- D-Pad UP released
      triggerReport = "D-Pad UP released"
      dpadState[1] = "up"
   elseif scancode == "a" then
      -- D-Pad LEFT released
      triggerReport = "D-Pad LEFT released"
      dpadState[2] = "up"
   elseif scancode == "s" then
      -- D-Pad DOWN released
      triggerReport = "D-Pad DOWN released"
      dpadState[3] = "up"
   elseif scancode == "d" then
      -- D-Pad RIGHT released
      triggerReport = "D-Pad RIGHT released"
      dpadState[4] = "up"
   elseif scancode == "space" then
      -- Button X released
      triggerReport = "Button X released"
      fbtnState[1] = "up"
   elseif scancode == "b" then
      -- Button Y released
      triggerReport = "Button Y released"
      fbtnState[2] = "up"
   elseif scancode == "lshift" then
      -- Button B released
      triggerReport = "Button B released"
      fbtnState[3] = "up"
   elseif scancode == "z" then
      -- Button A released
      triggerReport = "Button A released"
      fbtnState[4] = "up"
   elseif scancode == "escape" then
      -- SELECT released
      triggerReport = "SELECT released"
      love.event.quit()
      miscState[1] = "up"
   elseif scancode == "return" then
      -- START released
      triggerReport = "START released"
      miscState[2] = "up"
   elseif scancode == "volumeup" then
      -- VOLUME UP released
      triggerReport = "Volume UP released"
      miscState[3] = "up"
   elseif scancode == "volumedown" then
      -- VOLUME DOWN released
      triggerReport = "Volume DOWN released"
      miscState[4] = "up"
   elseif scancode == "up" then
      -- L-Stick UP released
      triggerReport = "L-Stick UP released"
      lstkState[1] = "up"
   elseif scancode == "left" then
      -- L-Stick LEFT released
      triggerReport = "L-Stick LEFT released"
      lstkState[2] = "up"
   elseif scancode == "down" then
      -- L-Stick DOWN released
      triggerReport = "L-Stick DOWN released"
      lstkState[3] = "up"
   elseif scancode == "right" then
      -- L-Stick RIGHT released
      triggerReport = "L-Stick RIGHT released"
      lstkState[4] = "up"
   elseif scancode == "l" then
      -- Back L1 released
      triggerReport = "Back L1 released"
      bbtnState[1] = "up"
   elseif scancode == "x" then
      -- Back L2 released
      triggerReport = "Back L2 released"
      bbtnState[2] = "up"
   elseif scancode == "r" then
      -- Right R1 released
      triggerReport = "Back R1 released"
      bbtnState[3] = "up"
   elseif scancode == "y" then
      -- Right R2 released
      triggerReport = "Back R2 released"
      bbtnState[4] = "up"
    elseif scancode == "1" then
      -- L-Stick L3 released, edit gptokeyb for L3 = "1"
      triggerReport = "L-Stick L3 released"
      miscState[5] = "up"
   elseif scancode == "2" then
      -- R-Stick R3 released, edit gptokeyb for R3 = "2"
      triggerReport = "R-Stick R3 released"
      miscState[6] = "up"
  end
end


-- R36S default for R-Stick (mouse) 
function love.mousemoved( x, y, dx, dy, istouch )
	triggerReport = "x:" .. x .. " y:" .. y .. " dx:" .. dx .. " dy:" .. dy
	if dy < -1 then
		rstkState[1] = "ok"
	end
	if dx < -1 then
		rstkState[2] = "ok"
	end
	if dy > 1 then
		rstkState[3] = "ok"
	end
	if dx > 1 then
		rstkState[4] = "ok"
	end
end

end



function K.draw()

    love.graphics.setFont(mainFont)
    love.graphics.printf("R36S Input Tester via Love2d by Xanthia (SELECT to Quit)", mainFont, 0,  0, 640, "center")
    love.graphics.printf(triggerReport, mainFont, 0, 18*4, 640, "center")
    love.graphics.printf("D-Pad Up      : " .. dpadState[1] .. "    Btn X         : " .. fbtnState[1], mainFont, 0, 18*6,  640, "center")
    love.graphics.printf("D-Pad Left    : " .. dpadState[2] .. "    Btn Y         : " .. fbtnState[2], mainFont, 0, 18*7,  640, "center")
    love.graphics.printf("D-Pad Down    : " .. dpadState[3] .. "    Btn B         : " .. fbtnState[3], mainFont, 0, 18*8,  640, "center")
    love.graphics.printf("D-Pad Right   : " .. dpadState[4] .. "    Btn A         : " .. fbtnState[4], mainFont, 0, 18*9,  640, "center")
    love.graphics.printf("L-Stick Up    : " .. lstkState[1] .. "    R-Stick Up    : " .. rstkState[1], mainFont, 0, 18*11, 640, "center")
    love.graphics.printf("L-Stick Left  : " .. lstkState[2] .. "    R-Stick Left  : " .. rstkState[2], mainFont, 0, 18*12, 640, "center")
    love.graphics.printf("L-Stick Down  : " .. lstkState[3] .. "    R-Stick Down  : " .. rstkState[3], mainFont, 0, 18*13, 640, "center")
    love.graphics.printf("L-Stick Right : " .. lstkState[4] .. "    R-Stick Right : " .. rstkState[4], mainFont, 0, 18*14, 640, "center")
    love.graphics.printf("Back Btn L1   : " .. bbtnState[1] .. "    Back Btn R1   : " .. bbtnState[3], mainFont, 0, 18*16, 640, "center")
    love.graphics.printf("Back Btn L2   : " .. bbtnState[2] .. "    Back Btn R2   : " .. bbtnState[4], mainFont, 0, 18*17, 640, "center")
    love.graphics.printf("SELECT        : " .. miscState[1] .. "    Volume UP     : " .. miscState[3], mainFont, 0, 18*19, 640, "center")
    love.graphics.printf("START         : " .. miscState[2] .. "    Volume DOWN   : " .. miscState[4], mainFont, 0, 18*20, 640, "center")
    love.graphics.printf("L-Stick L3    : " .. miscState[5] .. "    R-Stick  R3   : " .. miscState[6], mainFont, 0, 18*21, 640, "center")
    love.graphics.printf(math.floor(frameElapsed/60) .. " seconds, " .. frameElapsed .. " frames (scene 998)", mainFont, 0, 18*23, 640, "right" )

end



return K
-- R36S default Love2d keymapping [end]