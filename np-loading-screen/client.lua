local Ran = false
RegisterNetEvent("loading:disableLoading")
AddEventHandler("loading:disableLoading", function()
	if not Ran then
		print("kekw")
		ShutdownLoadingScreenNui()
		Ran = true
	end
end)



Citizen.CreateThread(function()
	SetNuiFocus(true, false)
end)