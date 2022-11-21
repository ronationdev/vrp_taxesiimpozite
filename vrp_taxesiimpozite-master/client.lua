vRP = Proxy.getInterface("vRP")

local minute = 60
local secunde = 30

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000) 
		secunde = secunde - 1
		if secunde == 0 then
			secunde = 30
			minute = minute -1
			if minute == 0  then
				minute = 60
				secunde = 30
				TriggerServerEvent('salar1')
			end
		end
	end
end)

Citizen.CreateThread(function()

	while true do
		Citizen.Wait(1)
		timpPayday(1.37, 0.69, 1.0,1.0,0.5, "~w~Taxele in  :~o~ "..minute..":"..secunde.."~w~ Minute", 255, 255, 255, 255)
	end
end)





function timpPayday(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(scale, scale)
	SetTextColour( 0,0,0, 255 )
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
	SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end
