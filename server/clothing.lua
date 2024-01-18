RegisterNetEvent('qb-radialmenu:server:giveitem', function(item, amount, slot, info)
    local Player = QBCore.Functions.GetPlayer(source)
    
    Player.Functions.AddItem(item, amount, slot, info)
	TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[item], "add")
end)

RegisterNetEvent('qb-radialmenu:server:removeitem', function(item, amount, slot)
    local Player = QBCore.Functions.GetPlayer(source)
    
	Player.Functions.RemoveItem(item, amount, slot)
	TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[item], "remove")
end)


for _, v in ipairs(Config.ClothingItems.clothes) do
	QBCore.Functions.CreateUseableItem(v, function(source, item)
		local Player = QBCore.Functions.GetPlayer(source)
		
		if not Player.Functions.GetItemByName(item.name) then return end
		print(item.info.model)
		TriggerClientEvent('qb-radialmenu:WearClothes', source, item, v)
	end)
end

for _, v in ipairs(Config.ClothingItems.props) do
	QBCore.Functions.CreateUseableItem(v, function(source, item)
		local Player = QBCore.Functions.GetPlayer(source)
		
		if not Player.Functions.GetItemByName(item.name) then return end
		print(item.info.model)
		TriggerClientEvent('qb-radialmenu:WearProps', source, item, v)
	end)
end