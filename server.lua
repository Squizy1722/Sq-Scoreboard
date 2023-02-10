local QBCore = exports['qb-core']:GetCoreObject()

UpdateTime = 5 -- Sec

Citizen.CreateThread(function()
    while true do
        local src = source
        local players = {}
        for k, v in pairs(QBCore.Functions.GetPlayers()) do
            local targetped = GetPlayerPed(v)
            local ped = QBCore.Functions.GetPlayer(v)
            players[#players+1] = {
                id = v,
                name = GetPlayerName(v),
                ping = GetPlayerPing(v)
            }
        end
      TriggerClientEvent("Sq-scoreboard:client:update",-1,players)
      Wait(UpdateTime * 1000)
    end
  end)