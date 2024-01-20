RegisterNetEvent('qb-radialmenu:server:RemoveStretcher', function(pos, stretcherObject)
    TriggerClientEvent('qb-radialmenu:client:RemoveStretcherFromArea', -1, pos, stretcherObject)
end)

RegisterNetEvent('qb-radialmenu:Stretcher:BusyCheck', function(id, type)
    TriggerClientEvent('qb-radialmenu:Stretcher:client:BusyCheck', id, source, type)
end)

RegisterNetEvent('qb-radialmenu:server:BusyResult', function(isBusy, otherId, type)
    TriggerClientEvent('qb-radialmenu:client:Result', otherId, isBusy, type)
end)

--added by Pamela
RegisterNetEvent('qb-radialmenu:server:InsertStretcherIntoAmbulance')
AddEventHandler('qb-radialmenu:server:InsertStretcherIntoAmbulance', function()
    local src = source
    TriggerClientEvent('qb-radialmenu:client:InsertStretcherIntoAmbulance', src)
end)

RegisterNetEvent('qb-radialmenu:server:RemoveStretcherFromAmbulance')
AddEventHandler('qb-radialmenu:server:RemoveStretcherFromAmbulance', function()
    local src = source
    TriggerClientEvent('qb-radialmenu:client:RemoveStretcherFromAmbulance', src)
end)
--till here