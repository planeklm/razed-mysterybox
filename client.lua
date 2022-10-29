local QBCore = exports['qb-core']:GetCoreObject()
 
 exports['qb-target']:AddTargetModel(Config.Shop, {
    options = {
    {
      type = "client",
      event = "razed-mysterybox:openMenu",
      label = "Open Mystery Box Shop",
      icon = "fa-solid fa-cash-register",
    }
  },
  distance = Config.TargetDistance,
})

RegisterNetEvent('razed-mysterybox:openMenu', function()
  exports['qb-menu']:openMenu({
      {
          header = "Mystery box Shop",
          isMenuHeader = true,
      },
      {
          id = 1,
          header = "Low-Tier Mystery Box",
          txt = "Price:" ..Config.LowTierPrice.. " - It's an alright mystery box which inclues some random but useful items, perfect is you're broke.",
          params = {
              event = "razed-mysterybox:GiveLowTierMysteryBox",
          }
      },
    {
      id = 2,
      header = "Premium-Tier Mystery Box",
      txt = "Price:"  ..Config.PremiumTierPrice..  " - An amazing mystery box which includes some top-notch items, perfect for your 'rich' lifestyle, if you can afford it.",
      params = {
          event = "razed-mysterybox:GivePremiumTierMysteryBox",
      }
  },  
})
end)

--Low Tier
RegisterNetEvent('razed-mysterybox:GiveLowTierMysteryBox')
AddEventHandler('razed-mysterybox:GiveLowTierMysteryBox', function()
  TriggerServerEvent('razed-mysterybox:GiveLowTierMysteryBox1', idk, idk, money)
end)

--Premium Tier
RegisterNetEvent('razed-mysterybox:GivePremiumTierMysteryBox')
AddEventHandler('razed-mysterybox:GivePremiumTierMysteryBox', function()
  TriggerServerEvent('razed-mysterybox:GivePremiumTierMysteryBox1', idk, idk, money)
end)