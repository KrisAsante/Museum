-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Chris Asante
-- Created on: March 2018
--
-----------------------------------------------------------------------------------------
local dayTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 400, 450, 75 )
dayTextField.id = "day textField"

local ChooseDayTextField = display.newText( "What day is it", display.contentCenterX, display.contentCenterY - 500, native.systemFont, 75 )
ChooseDayTextField.id = "chooose day textField"
ChooseDayTextField:setFillColor( 1, 1, 1 )

local ageTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
ageTextField.id = "age textField"

local ageField = display.newText( "How old are you", display.contentCenterX, display.contentCenterY - 300, native.systemFont, 75 )
ageField.id = "age textField"
ageField:setFillColor( 1, 1, 1 )

local freeField = display.newText( "", display.contentCenterX, display.contentCenterY - 500, native.systemFont, 75 )
freeField.id = "free textField"
freeField:setFillColor( 1, 1, 1 )

local payField = display.newText( "", display.contentCenterX, display.contentCenterY - 500, native.systemFont, 75 )
payField.id = "pay textField"
payField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

local function calculateButtonTouch( event )

local age
local day

	age = tonumber(ageTextField.text)
	day = dayTextField.text

    if (day == "monday" or day == "tuesday" ) or (age < 21 and age > 12) then
    freeField.text = " Museum is free for you "
    else payField.text = " Pay money to get in the museum "
    end

   return true
end

	calculateButton:addEventListener( "touch", calculateButtonTouch )