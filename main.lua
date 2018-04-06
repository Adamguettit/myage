------------------------------------------------------------------------------------------
-- created on : april 5
-- created by : Adam
-- main.lua
-- Tells if you have you guessed my age right or not.
-----------------------------------------------------------------------------------------
local numberguessed
local numberguessedTextField = native.newTextField( display.contentCenterX , display.contentCenterY - 200, 450, 100 )
numberguessedTextField.id = "numberguessed textField"

local myage = 15

local enterButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY
enterButton.id = "enter Button"

display.newText("Try to guess my age (hint: its between 1 and 20)" , 1024, 300, native.systemFont, 80)

local function enterButtonTouch( event )

	numberguessed = numberguessedTextField.text
	numberguessedtonumber = tonumber( numberguessed )

	
    if myage == numberguessedtonumber then
	display.newText("Correct!!", 1024, 900, native.systemFont, 100)
	 elseif numberguessedtonumber < myage then
	 display.newText("It's a bit more. Try again", 1024, 900, native.systemFont, 100)
	 elseif numberguessedtonumber > myage then
	 display.newText("It's a bit less. Try again", 1024, 900, native.systemFont, 100)
	 elseif numberguessedtonumber == myage then
	 	display.newText("Correct", 1024, 900, native.systemFont, 100)
	 else 
	 	display.newText("please type a valid number ", 1024, 900, native.systemFont, 100)
	 end
end

enterButton:addEventListener( "touch", enterButtonTouch )
