QBCore = exports['qb-core']:GetCoreObject()
local inRadialMenu = false
local PlayerData = QBCore.Functions.GetPlayerData()

RegisterCommand('radialmenu', function()
    if not PlayerData.metadata["isdead"] and not PlayerData.metadata["inlaststand"] and not PlayerData.metadata["ishandcuffed"] and not IsPauseMenuActive() and not inRadialMenu then
        openRadial(true)
        SetCursorLocation(0.5, 0.5)
    end
end)

RegisterKeyMapping('radialmenu', Lang:t("general.command_description"), 'keyboard', 'F1')

-- Sets the metadata when the player spawns
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
end)

-- Sets the playerdata to an empty table when the player has quit or did /logout
RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    PlayerData = {}
end)

-- This will update all the PlayerData that doesn't get updated with a specific event other than this like the metadata
RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
    PlayerData = val
end)

function setupSubItems()
    if PlayerData.metadata["isdead"] then
        if PlayerData.job.name == "police" or PlayerData.job.name == "ambulance" then
            if not Config.MenuItems[4] then
                Config.MenuItems[4] = {
                    id = 'jobinteractions',
                    title = 'Work',
                    icon = 'briefcase',
                    items = {}
                }
            end
            Config.MenuItems[4].items = {
                [1] = {
                    id = 'emergencybutton2',
                    title = Lang:t("options.emergency_button"),
                    icon = '#general',
                    type = 'client',
                    event = 'police:client:SendPoliceEmergencyAlert',
                    shouldClose = true,
                },
            }
        else
            if Config.JobInteractions[PlayerData.job.name] and next(Config.JobInteractions[PlayerData.job.name]) then
                if not Config.MenuItems[4] then
                    Config.MenuItems[4] = {
                        id = 'jobinteractions',
                        title = 'Work',
                        icon = 'briefcase',
                        items = {}
                    }
                end
                Config.MenuItems[4].items = Config.JobInteractions[PlayerData.job.name]
            else
                Config.MenuItems[4] = nil
            end
        end
    else
        if Config.JobInteractions[PlayerData.job.name] and next(Config.JobInteractions[PlayerData.job.name]) then
            if not Config.MenuItems[4] then
                Config.MenuItems[4] = {
                    id = 'jobinteractions',
                    title = 'Work',
                    icon = 'briefcase',
                    items = {}
                }
            end
            Config.MenuItems[4].items = Config.JobInteractions[PlayerData.job.name]
        else
            Config.MenuItems[4] = nil
        end
    end

    local Vehicle = GetVehiclePedIsIn(PlayerPedId())

    if Vehicle ~= 0 then
        local AmountOfSeats = GetVehicleModelNumberOfSeats(GetEntityModel(Vehicle))
        if AmountOfSeats == 2 then
            Config.MenuItems[3].items[3].items = {
                [1] = {
                    id = -1,
                    title = Lang:t("options.driver_seat"),
                    icon = 'caret-up',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
                [2] = {
                    id = 0,
                    title = Lang:t("options.passenger_seat"),
                    icon = 'caret-up',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
            }
        elseif AmountOfSeats == 3 then
            Config.MenuItems[3].items[3].items = {
                [4] = {
                    id = -1,
                    title = Lang:t("options.driver_seat"),
                    icon = 'caret-up',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
                [1] = {
                    id = 0,
                    title = Lang:t("options.passenger_seat"),
                    icon = 'caret-up',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
                [3] = {
                    id = 1,
                    title = Lang:t("options.other_seats"),
                    icon = 'caret-down',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
            }
        elseif AmountOfSeats == 4 then
            Config.MenuItems[3].items[3].items = {
                [4] = {
                    id = -1,
                    title = Lang:t("options.driver_seat"),
                    icon = 'caret-up',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
                [1] = {
                    id = 0,
                    title = Lang:t("options.passenger_seat"),
                    icon = 'caret-up',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
                [3] = {
                    id = 1,
                    title = Lang:t("options.rear_left_seat"),
                    icon = 'caret-down',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
                [2] = {
                    id = 2,
                    title = Lang:t("options.rear_right_seat"),
                    icon = 'caret-down',
                    type = 'client',
                    event = 'qb-radialmenu:client:ChangeSeat',
                    shouldClose = false,
                },
            }
        end
    end
end

function openRadial(bool)
    setupSubItems()
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        action = "ui",
        radial = bool,
        items = Config.MenuItems
    })
    inRadialMenu = bool
end

function closeRadial(bool)
    SetNuiFocus(false, false)
    inRadialMenu = bool
end

function getNearestVeh()
    local pos = GetEntityCoords(PlayerPedId())
    local entityWorld = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 20.0, 0.0)
    local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, PlayerPedId(), 0)
    local _, _, _, _, vehicleHandle = GetRaycastResult(rayHandle)
    return vehicleHandle
end

local function checkOption(t, t2)
    for k, v in pairs(t) do
        if v.items then
            if checkOption(v.items, t2) then return true end
        else
            if v.event == t2.event then
                return true
            end
        end
    end
    return false
end

RegisterNUICallback('closeRadial', function()
    closeRadial(false)
end)

RegisterNUICallback('selectItem', function(data)
    local itemData = data.itemData
    if itemData and checkOption(Config.MenuItems, itemData) then
        if itemData.type == 'client' then
            TriggerEvent(itemData.event, itemData)
        elseif itemData.type == 'server' then
            TriggerServerEvent(itemData.event, itemData)
        elseif itemData.type == 'command' then
            ExecuteCommand(itemData.event)
        elseif itemData.type == 'qbcommand' then
            TriggerServerEvent('QBCore:CallCommand', itemData.event, itemData)
        end
    end
end)

RegisterNetEvent('qb-radialmenu:client:noPlayers', function()
    QBCore.Functions.Notify(Lang:t("error.no_people_nearby"), 'error', 2500)
end)

RegisterNetEvent('qb-radialmenu:client:openDoor', function(data)
    local string = data.id
    local replace = string:gsub("door", "")
    local door = tonumber(replace)
    local ped = PlayerPedId()
    local closestVehicle = GetVehiclePedIsIn(ped) ~= 0 and GetVehiclePedIsIn(ped) or getNearestVeh()
    if closestVehicle ~= 0 then
        if closestVehicle ~= GetVehiclePedIsIn(ped) then
            local plate = QBCore.Functions.GetPlate(closestVehicle)
            if GetVehicleDoorAngleRatio(closestVehicle, door) > 0.0 then
                if not IsVehicleSeatFree(closestVehicle, -1) then
                    TriggerServerEvent('qb-radialmenu:trunk:server:Door', false, plate, door)
                else
                    SetVehicleDoorShut(closestVehicle, door, false)
                end
            else
                if not IsVehicleSeatFree(closestVehicle, -1) then
                    TriggerServerEvent('qb-radialmenu:trunk:server:Door', true, plate, door)
                else
                    SetVehicleDoorOpen(closestVehicle, door, false, false)
                end
            end
        else
            if GetVehicleDoorAngleRatio(closestVehicle, door) > 0.0 then
                SetVehicleDoorShut(closestVehicle, door, false)
            else
                SetVehicleDoorOpen(closestVehicle, door, false, false)
            end
        end
    else
        QBCore.Functions.Notify(Lang:t("error.no_vehicle_found"), 'error', 2500)
    end
end)

RegisterNetEvent('qb-radialmenu:client:setExtra', function(data)
    local string = data.id
    local replace = string:gsub("extra", "")
    local extra = tonumber(replace)
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped)
    if veh ~= nil then
        if GetPedInVehicleSeat(veh, -1) == ped then
            SetVehicleAutoRepairDisabled(veh, true) -- Forces Auto Repair off when Toggling Extra [GTA 5 Niche Issue]
            if DoesExtraExist(veh, extra) then
                if IsVehicleExtraTurnedOn(veh, extra) then
                    SetVehicleExtra(veh, extra, 1)
                    QBCore.Functions.Notify(Lang:t("error.extra_deactivated", {extra = extra}), 'error', 2500)
                else
                    SetVehicleExtra(veh, extra, 0)
                    QBCore.Functions.Notify(Lang:t("success.extra_activated", {extra = extra}), 'success', 2500)
                end
            else
                QBCore.Functions.Notify(Lang:t("error.extra_not_present", {extra = extra}), 'error', 2500)
            end
        else
            QBCore.Functions.Notify(Lang:t("error.not_driver"), 'error', 2500)
        end
    end
end)

RegisterNetEvent('qb-radialmenu:trunk:client:Door', function(plate, door, open)
    local veh = GetVehiclePedIsIn(PlayerPedId())
    if veh ~= 0 then
        local pl = QBCore.Functions.GetPlate(veh)
        if pl == plate then
            if open then
                SetVehicleDoorOpen(veh, door, false, false)
            else
                SetVehicleDoorShut(veh, door, false)
            end
        end
    end
end)

RegisterNetEvent('qb-radialmenu:client:ChangeSeat', function(data)
    local Veh = GetVehiclePedIsIn(PlayerPedId())
    local IsSeatFree = IsVehicleSeatFree(Veh, data.id)
    local speed = GetEntitySpeed(Veh)
    local HasHarnass = exports['qb-smallresources']:HasHarness()
    if not HasHarnass then
        local kmh = speed * 3.6
        if IsSeatFree then
            if kmh <= 100.0 then
                SetPedIntoVehicle(PlayerPedId(), Veh, data.id)
                QBCore.Functions.Notify(Lang:t("info.switched_seats"), {seat = data.title})
            else
                QBCore.Functions.Notify(Lang:t("error.vehicle_driving_fast"), 'error')
            end
        else
            QBCore.Functions.Notify(Lang:t("error.seat_occupied"), 'error')
        end
    else
        QBCore.Functions.Notify(Lang:t("error.race_harness_on"), 'error')
    end
end)

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end