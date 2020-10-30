--[[Atlas Flight Simulator Hook Script. to test it out join our discord.gg/atlasfs its a flight simulator :). Thanks!]]--

function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

hook = false

Citizen.CreateThread(function()
while true do 
Citizen.Wait(0)
if IsControlJustReleased(1, 165) then 
if hook == false then

ExecuteCommand("hookenable")
else
ExecuteCommand("hookdisable")
end
end
end
end)

RegisterCommand("hookenable", function(source, args, rawCommand)
if (hook == false) then
ShowNotification("~g~Hook Deployed") -- feel free to rename me
hook = true
print(hook)
end
end, false)

RegisterCommand("hookdisable", function(source, args, rawCommand)
if (hook == true) then 
ShowNotification("~g~Hook Retracted") -- feel free to rename me
hook = false
print(hook)
end
end, false)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local coords = {
		Coord_X = 3086.39,
		Coord_Y = -4781.92,
		Coord_Z = 15.26
		}
		local ped = GetPlayerPed(-1)
		local pedCoords = GetEntityCoords(ped)
		local veh = GetVehiclePedIsIn(ped, false)
		local hookDist = GetDistanceBetweenCoords(coords.Coord_X, coords.Coord_Y, coords.Coord_Z,  pedCoords["x"], pedCoords["y"], pedCoords["z"], true)
		local speedchecker = GetEntitySpeed(veh)
		local scheck = 45.64 -- feel free to change the speed!
		if speedchecker >= scheck then
			if ((hookDist <= 4.0) and (hook == true))then
				local ped = GetPlayerPed(-1)
				local veh = GetVehiclePedIsIn(ped, false)
				local sc = 63.2
				local ss = 42.0
				local sss = 21.0
				local ssss = 15.0
				local sssss = 11.0
				local ssfs = 0.0
				ShowNotification("~g~Hooked on! Don't move")
				SetVehicleForwardSpeed(veh, sc)
				DisableAllControlActions(0);
				Citizen.Wait(700)
				SetVehicleForwardSpeed(veh, ss)
				Citizen.Wait(1000)
				SetVehicleForwardSpeed(veh, sss)
				Citizen.Wait(1400)
				SetVehicleForwardSpeed(veh, ssss)
				Citizen.Wait(1800)
				SetVehicleForwardSpeed(veh, sssss)
				Citizen.Wait(2000)
				SetVehicleForwardSpeed(veh, ssfs)
SetVehicleForwardSpeed(veh, -4.0)				
SetVehicleForwardSpeed(veh, -4.0)
SetVehicleForwardSpeed(veh, -4.0)
SetVehicleForwardSpeed(veh, -4.0)
SetVehicleForwardSpeed(veh, -4.0)
SetVehicleForwardSpeed(veh, -4.0)
SetVehicleForwardSpeed(veh, -4.0)
SetVehicleForwardSpeed(veh, -4.0)
ShowNotification("~g~You can move now!")
EnableAllControlActions(0)
				
			end
		end
	end
end)