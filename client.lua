local QBCore = exports['qb-core']:GetCoreObject()

key = 178


Citizen.CreateThread(
    function()
        while true do
            Wait(0)
            
            if IsControlJustPressed(0, key) then
                SetNuiFocus(true, true)
                SetNuiFocusKeepInput(true, false)
                SendNUIMessage({
                    type = 'show',
                })
            else
                if IsControlJustReleased(0, key) then
                SetNuiFocus(false, false)
                SetNuiFocusKeepInput(false, false)
                SendNUIMessage({
                    type = 'hide',
                })
            end
        end

end
end)

RegisterNetEvent('Sq-scoreboard:client:update', function(players)
    SendNUIMessage({
        type = 'update',
        Players = players,
    })
end)