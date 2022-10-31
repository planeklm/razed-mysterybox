local QBCore = exports['qb-core']:GetCoreObject()    

print('^4██████╗░░█████╗░███████╗███████╗██████╗░')
print('^4██╔══██╗██╔══██╗╚════██║██╔════╝██╔══██╗')
print('^4██████╔╝███████║░░███╔═╝█████╗░░██║░░██║')
print('^4██╔══██╗██╔══██║██╔══╝░░██╔══╝░░██║░░██║')
print('^4██║░░██║██║░░██║███████╗███████╗██████╔╝')
print('^4╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝╚══════╝╚═════╝░')
print('^1         Scripts and Resources          ')
print('^0')

print(Config.Status)

-- Low Tier Box
RegisterNetEvent('razed-mysterybox:GiveLowTierMysteryBox1')
RegisterNetEvent('razed-mysterybox:GiveLowTierMysteryBox1', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('lowmysterybox')
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['lowmysterybox'], 'add')
    Player.Functions.RemoveMoney('cash', Config.LowTierPrice)
end)

QBCore.Functions.CreateUseableItem('lowmysterybox', function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local FoundItem = Config.LowTierRewards['items'][math.random(1, #Config.LowTierRewards['items'])]

    TriggerClientEvent('QBCore:Notify', src, 'Opening the box!', 'success')

     Wait(2000)

     TriggerClientEvent('QBCore:Notify', src, 'Lets see what you got!')

     Wait(4000)

    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['lowmysterybox'], 'remove')
    TriggerClientEvent('QBCore:Notify', src, 'You got a '..FoundItem[1]..'!', 'success')
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[FoundItem[1]], 'add')
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[FoundItem[2]], 'add')
    Player.Functions.AddItem(FoundItem[1], FoundItem[2])
    end

end)

-- Premium Tier Box
RegisterNetEvent('razed-mysterybox:GivePremiumTierMysteryBox1')
RegisterNetEvent('razed-mysterybox:GivePremiumTierMysteryBox1', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('premiummysterybox')
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['premiummysterybox'], 'add')
    Player.Functions.RemoveMoney('cash', Config.PremiumTierPrice)
end)

QBCore.Functions.CreateUseableItem('premiummysterybox', function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local FoundItem = Config.PremiumTierRewards['items'][math.random(1, #Config.PremiumTierRewards['items'])]

    TriggerClientEvent('QBCore:Notify', src, 'Opening the box!', 'success')

     Wait(2000)

     TriggerClientEvent('QBCore:Notify', src, 'Lets see what you got!')

     Wait(4000)


    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['premiummysterybox'], 'remove')
    TriggerClientEvent('QBCore:Notify', src, 'You got a '..FoundItem[1]..'!', 'success')
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[FoundItem[1]], 'add')
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[FoundItem[2]], 'add')
    Player.Functions.AddItem(FoundItem[1], FoundItem[2])
    end

end)