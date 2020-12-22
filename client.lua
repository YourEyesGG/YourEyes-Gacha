ESX 					  = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('youreyes-gacha:unboxing')
AddEventHandler('youreyes-gacha:unboxing', function()
	local playerPed = GetPlayerPed(-1)
	
	Citizen.Wait(0)
	
	playAnim('missheistdockssetup1clipboard@base', 'base', -1, 49)	
	TriggerEvent("mythic_progbar:client:progress", {
        name = "vouchergosokanjas",
        duration = 4500,
        label = "Menggosok Voucher",
        useWhileDead = false,
        canCancel = false,
        controlDisables = {
            disableMovement = false,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "",
            anim = "",
        },
        prop = {
            model = "",
        }
    }, function(status)
        if not status then
			ClearPedTasks(playerPed)
        end
    end)
	
end)

function playAnim(animDict, animName, duration, move)
	RequestAnimDict(animDict)
	while not HasAnimDictLoaded(animDict) do Citizen.Wait(0) end
	TaskPlayAnim(PlayerPedId(), animDict, animName, 3.0, -3.0, duration, move, 1, false, false, false)
	RemoveAnimDict(animDict)
end
