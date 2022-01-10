RegisterNetEvent('qb-radialmenu:server:RemoveStretcher', function(PlayerPos, StretcherObject)
    TriggerClientEvent('qb-radialmenu:client:RemoveStretcherFromArea', -1, PlayerPos, StretcherObject)
end)

RegisterNetEvent('qb-radialmenu:Stretcher:BusyCheck', function(id, type)
    TriggerClientEvent('qb-radialmenu:Stretcher:client:BusyCheck', id, source, type)
end)

RegisterNetEvent('qb-radialmenu:server:BusyResult', function(IsBusy, OtherId, type)
    TriggerClientEvent('qb-radialmenu:client:Result', OtherId, IsBusy, type)
end)