RegisterServerEvent('qb-radialmenu:server:RemoveStretcher')
AddEventHandler('qb-radialmenu:server:RemoveStretcher', function(PlayerPos, StretcherObject)
    TriggerClientEvent('qb-radialmenu:client:RemoveStretcherFromArea', -1, PlayerPos, StretcherObject)
end)

RegisterServerEvent('qb-radialmenu:Stretcher:BusyCheck')
AddEventHandler('qb-radialmenu:Stretcher:BusyCheck', function(id, type)
    local MyId = source
    TriggerClientEvent('qb-radialmenu:Stretcher:client:BusyCheck', id, MyId, type)
end)

RegisterServerEvent('qb-radialmenu:server:BusyResult')
AddEventHandler('qb-radialmenu:server:BusyResult', function(IsBusy, OtherId, type)
    TriggerClientEvent('qb-radialmenu:client:Result', OtherId, IsBusy, type)
end)
