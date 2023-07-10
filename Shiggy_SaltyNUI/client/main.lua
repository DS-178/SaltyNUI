local ismuted = false

--- SaltyNUI Events ---
RegisterNetEvent('SaltyNUI:TsNotActive')
AddEventHandler('SaltyNUI:TsNotActive', function() 

	ismuted = true
	SendNUIMessage({action = "toggleWindow", value = "true"})
end)

RegisterNetEvent('SaltyNUI:TsActive')
AddEventHandler('SaltyNUI:TsActive', function() 
	SendNUIMessage({action = "toggleWindow", value = "false"})

	ismuted = false
end)

-- SaltyChat Events --- 
AddEventHandler('SaltyChat_SoundStateChanged', function(muted) 
	if muted then
		SendNUIMessage({action = "toggleWindow", value = "true"})
		ismuted = true
	else
		ismuted = false
		SendNUIMessage({action = "toggleWindow", value = "false"})
	end
end)


Citizen.CreateThread( function()
	while true do
		Citizen.wait(0)
			print("TEST")
	end
end)


function ShowNotification(text)
	SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
	DrawNotification(false, true)
end






