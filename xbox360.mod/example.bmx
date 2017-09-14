
Strict
Import srs.xbox360

Graphics 800,600

Global XB:XBox360 = New XBox360

While Not KeyDown(KEY_ESCAPE)
	Cls

	Rem
		Do 'XB.Update()' once per loop to poll the controller.
		If using multiple threads then there is no need to call this as 
		it will be called automatically in another thread
	EndRem
	XB.Update()
	
	' Draw some info on the screen relating to a connected controller
	DrawXBoxControllerInfo()

	Flip
Wend

Function DrawXBoxControllerInfo()
	' Use index 0 to 3 for up to 4 controllers
	Const Index:Int = 0

	If Not XB.IsConnected(Index)
		DrawText("No controllers founds!", 10, 10)
		Return
	EndIf
	
	DrawText("Buttons:", 10, 10)
	
	DrawText("A: " + XB.A(Index), 10, 25)
	DrawText("B: " + XB.B(Index), 10, 35)
	DrawText("X: " + XB.X(Index), 10, 45)
	DrawText("Y: " + XB.Y(Index), 10, 55)
	
	DrawText("Left shoulder:  " + XB.LeftShoulder(Index), 10, 70)
	DrawText("Right shoulder: " + XB.RightShoulder(Index), 10, 80)
	
	DrawText("Start: " + XB.Start(Index), 10, 95)
	DrawText("Back:  " + XB.Back(Index), 10, 105)
	
	DrawText("Left stick thumb:  " + XB.LeftThumb(Index), 10, 120)
	DrawText("Right stick thumb: " + XB.RightThumb(Index), 10, 130)
	
	DrawText("DPad left:  " + XB.DPadLeft(Index), 10, 145)
	DrawText("DPad right: " + XB.DPadRight(Index), 10, 155)
	DrawText("DPad up:    " + XB.DPadUp(Index), 10, 165)
	DrawText("DPad down:  " + XB.DPadDown(Index), 10, 175)
	
	DrawText("Analogs:         Integer      Float", 300, 10)
	
	' Integer and float return values for analogs
	DrawText("Left trigger:    " + XB.LeftTrigger(Index), 300, 25)
	DrawText(XB.LeftTriggerF(Index), 540, 25)
	
	DrawText("Right trigger:   " + XB.RightTrigger(Index), 300, 35)
	DrawText(XB.RightTriggerF(Index), 540, 35)
	
	DrawText("Left stick H:    " + XB.LeftStickHorizontal(Index), 300, 50)
	DrawText(XB.LeftStickHorizontalF(Index), 540, 50)
	DrawText("Left stick V:    " + XB.LeftStickVertical(Index), 300, 60)
	DrawText(XB.LeftStickVerticalF(Index), 540, 60)

	DrawText("Right stick H:   " + XB.RightStickHorizontal(Index), 300, 75)
	DrawText(XB.RightStickHorizontalF(Index), 540, 75)
	DrawText("Right stick V:   " + XB.RightStickVertical(Index), 300, 85)
	DrawText(XB.RightStickVerticalF(Index), 540, 85)
	
EndFunction


