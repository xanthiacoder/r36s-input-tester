-- love-ansi.lua by joash chee to emulate ANSI
--	eg. 	love.graphics.setColor( ansicolor.white )

ansicolor = {
	black 			= { 0, 0, 0, 255 },
	red 			= { 128, 0, 0, 255 },
	green 			= { 0, 128, 0, 255 },
	yellow 			= { 128, 128, 0, 255 },
	blue 			= { 0, 0, 128, 255 },
	magenta			= { 128, 0, 128, 255 },
	cyan 			= { 0, 128, 128, 255 },
	gray	 		= { 192, 192, 192, 255 },
	grey	 		= { 192, 192, 192, 255 },
	darkgray		= { 128, 128, 128, 255 },
	darkgrey		= { 128, 128, 128, 255 },
	brightred		= { 255, 0, 0, 255 },
	brightgreen		= { 0, 255, 0, 255 },
	brightyellow 	= { 255, 255, 0, 255 },
	brightblue 		= { 0, 0, 255, 255 },
	brightmagenta 	= { 255, 0, 255, 255 },
	brightcyan 		= { 0, 255, 255, 255 },
	white 			= { 255, 255, 255, 255 },
	}

-- Text Graphics functions calibrated to 181 by 50 char screen, 1280 by 720 px screen, Menlo-Regular 12pt Font
-- font is 7x14 px

function drawBox(x, y, width, height, foreground, background)

	local i = 0
	love.graphics.setColor( background )
	love.graphics.rectangle("fill", x*7, y*14, width*7, height*14)
	love.graphics.setColor( foreground )
	love.graphics.printf("┌", x*7, y*14, width*7, 'left')
	love.graphics.printf("╘", x*7, (y+height-1)*14, width*7, 'left')
	love.graphics.printf("╖", (x+width-1)*7, y*14, width*7, 'left')
	love.graphics.printf("╝", (x+width-1)*7, (y+height-1)*14, width*7, 'left')
	for i = 1,width-2 do
		love.graphics.printf("─", (x+i)*7, y*14, width*7, 'left')
		love.graphics.printf("═", (x+i)*7, (height+y-1)*14, width*7, 'left')
	end
	for i = 1,height-2 do
		love.graphics.printf("│", x*7, (y+i)*14, width*7, 'left')
		love.graphics.printf("║", (x+width-1)*7, (y+i)*14, width*7, 'left')
	end
end