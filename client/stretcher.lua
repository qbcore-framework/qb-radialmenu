local IsAttached = false
local StretcherObject = nil
local IsLayingOnBed = false

-- Add your vehicles here that will allow Ambulance to get a stretcher out.
local AllowedStretcherVehicles = {
    "ambulance",
	}

function CheckForVehicles()
    local PlayerPed = PlayerPedId()
    local PlayerPos = GetEntityCoords(PlayerPed)
    local veh = 0
    for k, v in pairs(AllowedStretcherVehicles) do
        veh = GetClosestVehicle(PlayerPos.x, PlayerPos.y, PlayerPos.z, 7.5, GetHashKey(v), 70)
        if veh ~= 0 then
            break
        end
    end
    return veh
end

RegisterNetEvent('qb-radialmenu:client:TakeStretcher', function()
    local PlayerPed = PlayerPedId()
    local PlayerPos = GetEntityCoords(PlayerPed)
    local Vehicle = CheckForVehicles()

    if Vehicle ~= 0 then
        local VehCoords = GetOffsetFromEntityInWorldCoords(PlayerPed, 0, 0.75, 0)
        LoadModel("prop_ld_binbag_01")
        Obj = CreateObject(`prop_ld_binbag_01`, GetEntityCoords(PlayerPedId()), true)
        if Obj ~= nil or Obj ~= 0 then
            SetEntityRotation(Obj, 0.0, 0.0, GetEntityHeading(Vehicle), false, false)
            FreezeEntityPosition(Obj, true)
            PlaceObjectOnGroundProperly(Obj)
            StretcherObject = Obj
            SetTimeout(200, function()
                AttachToStretcher()
                IsAttached = true
            end)
        else
            QBCore.Functions.Notify("Something went wrong..", 'error')
        end
    else
        QBCore.Functions.Notify("You're not near an Ambulance..", 'error')
    end
end)

RegisterNetEvent('qb-radialmenu:client:RemoveStretcher', function()
    local PlayerPed = PlayerPedId()
    local PlayerPos = GetOffsetFromEntityInWorldCoords(PlayerPed, 0, 1.5, 0)

    if StretcherObject ~= nil then
        local BCoords = GetEntityCoords(StretcherObject)
        local Dist = #(PlayerPos - BCoords)

        if Dist < 3.0 then
            if DoesEntityExist(StretcherObject) then
                DeleteEntity(StretcherObject)
                ClearPedTasks(PlayerPed)
                DetachEntity(PlayerPed, false, true)
                TriggerServerEvent('qb-radialmenu:server:RemoveStretcher', PlayerPos, StretcherObject)
                IsAttached = false
                StretcherObject = nil
                IsLayingOnBed = false
            end
        else
            QBCore.Functions.Notify('You\'re too far away!', 'error')
        end
    end
end)

function SetClosestStretcher()
    local Ped = PlayerPedId()
    local c = GetEntityCoords(Ped)
    local Object = GetClosestObjectOfType(c.x, c.y, c.z, 10.0, `prop_ld_binbag_01`, false, false, false)

    if Object ~= 0 then
        StretcherObject = Object
    end
end

CreateThread(function()
    while true do
        SetClosestStretcher()
        Wait(1000)
    end
end)

CreateThread(function()
    while true do
        local PlayerPed = PlayerPedId()
        local PlayerPos = GetEntityCoords(PlayerPed)
        
        if StretcherObject ~= nil then
            local ObjectCoords = GetEntityCoords(StretcherObject)
            local OffsetCoords = GetOffsetFromEntityInWorldCoords(StretcherObject, 0, 0.85, 0)
            local Distance = #(PlayerPos - OffsetCoords)

            if Distance <= 1.0 then
                if not IsAttached then
                    DrawText3Ds(OffsetCoords.x, OffsetCoords.y, OffsetCoords.z, '~g~E~w~ -Push Stretcher')
                    if IsControlJustPressed(0, 51) then
                        AttachToStretcher()
                        IsAttached = true
                    end
                    if IsControlJustPressed(0, 74) then
                        FreezeEntityPosition(StretcherObject, true)
                    end
                else
                    DrawText3Ds(OffsetCoords.x, OffsetCoords.y, OffsetCoords.z, '~g~E~w~ - Stop Pushing')
                    if IsControlJustPressed(0, 51) then
                        DetachStretcher()
                        IsAttached = false
                    end
                end

                if not IsLayingOnBed then
                    if not IsAttached then
                        DrawText3Ds(OffsetCoords.x, OffsetCoords.y, OffsetCoords.z + 0.2, '~g~G~w~ - Lay On Stretcher')
                        if IsControlJustPressed(0, 47) or IsDisabledControlJustPressed(0, 47) then
                            LayOnStretcher()
                        end
                    end
                end
            elseif Distance <= 2 then
                if not IsLayingOnBed then
                    DrawText3Ds(OffsetCoords.x, OffsetCoords.y, OffsetCoords.z, 'Push Here')
                else
                    if not IsAttached then
                        DrawText3Ds(OffsetCoords.x, OffsetCoords.y, OffsetCoords.z + 0.2, '~g~G~w~ - Get Off Stretcher')
                        if IsControlJustPressed(0, 47) or IsDisabledControlJustPressed(0, 47) then
                            GetOffStretcher()
                        end
                    end
                end
            end
        else
            Wait(1000)
        end

        Wait(3)
    end
end)

function GetClosestPlayer()
    local closestPlayers = QBCore.Functions.GetPlayersFromCoords()
    local closestDistance = -1
    local closestPlayer = -1
    local coords = GetEntityCoords(PlayerPedId())

    for i=1, #closestPlayers, 1 do
        if closestPlayers[i] ~= PlayerId() then
            local pos = GetEntityCoords(GetPlayerPed(closestPlayers[i]))
            local distance = #(pos - coords)

            if closestDistance == -1 or closestDistance > distance then
                closestPlayer = closestPlayers[i]
                closestDistance = distance
            end
        end
	end

	return closestPlayer, closestDistance
end

RegisterNetEvent('qb-radialmenu:client:RemoveStretcherFromArea', function(PlayerPos, BObject)
    local Ped = PlayerPedId()
    local Pos = GetEntityCoords(Ped)

    if Pos ~= PlayerPos then
        local Distance = #(Pos - PlayerPos)

        if StretcherObject ~= nil or StretcherObject ~= 0 then
            if StretcherObject == BObject then
                if Distance < 10 then
                    if IsEntityPlayingAnim(Ped, 'anim@heists@box_carry@', 'idle', false) then
                        DetachStretcher()
                    end

                    if IsEntityPlayingAnim(Ped, "anim@gangops@morgue@table@", "ko_front", false) then
                        local Coords = GetOffsetFromEntityInWorldCoords(Ped, 0.85, 0.0, 0)
                        ClearPedTasks(Ped)
                        DetachEntity(Ped, false, true)
                        SetEntityCoords(Ped, Coords.x, Coords.y, Coords.z)
                        IsLayingOnBed = false
                    end
                end
            end
        end
    end
end)

function LayOnStretcher()
    local inBedDicts = "anim@gangops@morgue@table@"
    local inBedAnims = "ko_front"
    local PlayerPed = PlayerPedId()
    local PlayerPos = GetEntityCoords(PlayerPed)
    local Object = GetClosestObjectOfType(PlayerPos.x, PlayerPos.y, PlayerPos.z, 3.0, `prop_ld_binbag_01`, false, false, false)
    local player, distance = GetClosestPlayer()

    if player == -1 then
        LoadAnim(inBedDicts)
        if Object ~= nil or Object ~= 0 then
            TaskPlayAnim(PlayerPedId(), inBedDicts, inBedAnims, 8.0, 8.0, -1, 69, 1, false, false, false)
            AttachEntityToEntity(PlayerPed, Object, 0, 0, 0.0, 1.0, 0.0, 0.0, 180.0, 0.0, false, false, false, false, 2, true)
            IsLayingOnBed = true
        end
    else
        if distance < 2.0 then
            TriggerServerEvent('qb-radialmenu:Stretcher:BusyCheck', GetPlayerServerId(player), "lay")
        else
            LoadAnim(inBedDicts)
            if Object ~= nil or Object ~= 0 then
                TaskPlayAnim(PlayerPedId(), inBedDicts, inBedAnims, 8.0, 8.0, -1, 69, 1, false, false, false)
                AttachEntityToEntity(PlayerPed, Object, 0, 0, 0.0, 1.6, 0.0, 0.0, 360.0, 0.0, false, false, false, false, 2, true)
                IsLayingOnBed = true
            end
        end
    end
end

RegisterNetEvent('qb-radialmenu:Stretcher:client:BusyCheck', function(OtherId, type)
    local ped = PlayerPedId()
    if type == "lay" then
        LoadAnim("anim@gangops@morgue@table@")
        IsEntityPlayingAnim(entity, animDict, animName, p4)
        if IsEntityPlayingAnim(ped, "anim@gangops@morgue@table@", "ko_front", 3) then
            TriggerServerEvent('qb-radialmenu:server:BusyResult', true, OtherId, type)
        else
            TriggerServerEvent('qb-radialmenu:server:BusyResult', false, OtherId, type)
        end
    else
        LoadAnim('anim@heists@box_carry@')
        if IsEntityPlayingAnim(ped, 'anim@heists@box_carry@', 'idle', 3) then
            TriggerServerEvent('qb-radialmenu:server:BusyResult', true, OtherId, type)
        else
            TriggerServerEvent('qb-radialmenu:server:BusyResult', false, OtherId, type)
        end
    end
end)

RegisterNetEvent('qb-radialmenu:client:Result', function(IsBusy, type)
    local inBedDicts = "anim@gangops@morgue@table@"
    local inBedAnims = "ko_front"
    local PlayerPed = PlayerPedId()
    local PlayerPos = GetEntityCoords(PlayerPed)
    local Object = GetClosestObjectOfType(PlayerPos.x, PlayerPos.y, PlayerPos.z, 3.0, `prop_ld_binbag_01`, false, false, false)
    
    if type == "lay" then
        if not IsBusy then
            NetworkRequestControlOfEntity(StretcherObject)
            LoadAnim(inBedDicts)
            TaskPlayAnim(PlayerPedId(), inBedDicts, inBedAnims, 8.0, 8.0, -1, 69, 1, false, false, false)
            AttachEntityToEntity(PlayerPed, Object, 0, 0, 0.0, 1.6, 0.0, 0.0, 360.0, 0.0, false, false, false, false, 2, true)
            IsLayingOnBed = true
        else
            QBCore.Functions.Notify("This stretcher is already in use!", "error")
            IsLayingOnBed = false
        end
    else
        if not IsBusy then
            NetworkRequestControlOfEntity(StretcherObject)
            LoadAnim("anim@heists@box_carry@")
            TaskPlayAnim(PlayerPed, 'anim@heists@box_carry@', 'idle', 8.0, 8.0, -1, 50, 0, false, false, false)
            SetTimeout(150, function()
                AttachEntityToEntity(StretcherObject, PlayerPed, GetPedBoneIndex(PlayerPed, 28422), 0.0, -1.0, -1.0, 195.0, 180.0, 180.0, 90.0, false, false, true, false, 2, true)
            end)
            FreezeEntityPosition(Obj, false)
            IsAttached = true
        else
            QBCore.Functions.Notify("This stretcher is already in use!", "error")
            IsAttached = false
        end
    end
end)

function GetOffStretcher()
    local PlayerPed = PlayerPedId()
    local PlayerPos = GetEntityCoords(PlayerPed)
    local Coords = GetOffsetFromEntityInWorldCoords(StretcherObject, 0.85, 0.0, 0)

    ClearPedTasks(PlayerPed)
    DetachEntity(PlayerPed, false, true)
    SetEntityCoords(PlayerPed, Coords.x, Coords.y, Coords.z)
    IsLayingOnBed = false
end

local DetachKeys = {157, 158, 160, 164, 165, 73, 36}

CreateThread(function()
    while true do
        if IsAttached then
            for _, PressedKey in pairs(DetachKeys) do
                if IsControlJustPressed(0, PressedKey) or IsDisabledControlJustPressed(0, PressedKey) then
                    DetachStretcher()
                end
            end

            if IsPedShooting(PlayerPedId()) or IsPlayerFreeAiming(PlayerId()) or IsPedInMeleeCombat(PlayerPedId()) then
                DetachStretcher()
            end

            if IsPedDeadOrDying(PlayerPedId(), false) then
                DetachStretcher()
            end

            if IsPedRagdoll(PlayerPedId()) then
                DetachStretcher()
            end
        else
            Wait(1000)
        end 
        Wait(5)
    end
end)

function AttachToStretcher()
    local PlayerPed = PlayerPedId()
    local ClosestPlayer, distance = GetClosestPlayer()
    local PlayerPed = PlayerPedId()
    local PlayerPos = GetEntityCoords(PlayerPed)

    if StretcherObject ~= nil then
        if ClosestPlayer == -1 then
            NetworkRequestControlOfEntity(StretcherObject)
            LoadAnim("anim@heists@box_carry@")
            TaskPlayAnim(PlayerPed, 'anim@heists@box_carry@', 'idle', 8.0, 8.0, -1, 50, 0, false, false, false)
            SetTimeout(150, function()
                AttachEntityToEntity(StretcherObject, PlayerPed, GetPedBoneIndex(PlayerPed, 28422), 0.0, -1.0, -0.50, 195.0, 180.0, 180.0, 90.0, false, false, true, false, 2, true)
            end)
            FreezeEntityPosition(Obj, false)
        else
            if distance < 2.0 then
                TriggerServerEvent('qb-radialmenu:Stretcher:BusyCheck', GetPlayerServerId(ClosestPlayer), "attach")
            else
                NetworkRequestControlOfEntity(StretcherObject)
                LoadAnim("anim@heists@box_carry@")
                TaskPlayAnim(PlayerPed, 'anim@heists@box_carry@', 'idle', 8.0, 8.0, -1, 50, 0, false, false, false)
                SetTimeout(150, function()
                    AttachEntityToEntity(StretcherObject, PlayerPed, GetPedBoneIndex(PlayerPed, 28422), 0.0, -1.0, -1.0, 195.0, 180.0, 180.0, 90.0, false, false, true, false, 2, true)
                end)
                FreezeEntityPosition(Obj, false)
            end
        end
    end
end

function DetachStretcher()
    local PlayerPed = PlayerPedId()
    DetachEntity(StretcherObject, false, true)
    ClearPedTasksImmediately(PlayerPedId())
    IsAttached = false
end

CreateThread(function()
    Wait(1000)
    local Ped = PlayerPedId()
    local Pos = GetEntityCoords(Ped)
    local Object = GetClosestObjectOfType(Pos.x, Pos.y, Pos.z, 5.0, `prop_ld_binbag_01`, false, false, false)
    DeleteObject(Object)
    ClearPedTasksImmediately(PlayerPedId())
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        if StretcherObject ~= nil then
            DetachStretcher()
            DeleteObject(StretcherObject)
            ClearPedTasksImmediately(PlayerPedId())
        end
    end
end)

function LoadAnim(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(1)
    end
end

function LoadModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Wait(1)
    end
end
