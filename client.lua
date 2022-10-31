local blips = {} 

local function createBlips()
  for k, v in pairs(Config.BlipLocation) do
      blips[k] = AddBlipForCoord(tonumber(v.x), tonumber(v.y), tonumber(v.z))
      SetBlipSprite(blips[k], Config.Blip.blipType)
      SetBlipDisplay(blips[k], 4)
      SetBlipScale  (blips[k], Config.Blip.blipScale)
      SetBlipColour (blips[k], Config.Blip.blipColor)
      SetBlipAsShortRange(blips[k], true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(tostring(Config.Blip.blipName))
      EndTextCommandSetBlipName(blips[k])
  end
end

local function removeBlips()
  for k, _ in pairs(Config.BlipLocation) do
      RemoveBlip(blips[k])
  end
  blips = {}
end

local function createSeller()
  for i = 1, #Config.Location do
      local current = Config.Location[i]
      current.model = type(current.model) == 'string' and GetHashKey(current.model) or current.model
      RequestModel(current.model)
      while not HasModelLoaded(current.model) do
          Wait(0)
      end
      local currentCoords = vector4(current.coords.x, current.coords.y, current.coords.z - 1, current.coords.w)
      local ped = CreatePed(0, current.model, currentCoords, false, false)
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
      
  end
  exports['qb-target']:AddTargetModel('a_m_m_business_01', {
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
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
  createBlips()
  createSeller()
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
  removeBlips()
end)

AddEventHandler('onResourceStart', function(resource)
    if GetCurrentResourceName() == resource then
      Wait(100)
      createBlips()
      createSeller()
    end
end)

----------------------------------------------------------------------------------------

RegisterNetEvent('razed-mysterybox:openMenu', function()
  exports['qb-menu']:openMenu({
      {
          header = 'Mystery box Shop',
          isMenuHeader = true,
      },
      {
          id = 1,
          header = 'Low-Tier Mystery Box',
          txt = 'Price:' ..Config.LowTierPrice.. ' - It\'s an alright mystery box which inclues some random but useful items, perfect is you\'re broke.',
          params = {
              event = 'razed-mysterybox:GiveLowTierMysteryBox',
          }
      },
    {
      id = 2,
      header = 'Premium-Tier Mystery Box',
      txt = 'Price:'  ..Config.PremiumTierPrice..  ' - An amazing mystery box which includes some top-notch items, perfect for your \'rich\' lifestyle, if you can afford it.',
      params = {
          event = 'razed-mysterybox:GivePremiumTierMysteryBox',
      }
  },  
})
end)

--Low Tier
RegisterNetEvent('razed-mysterybox:GiveLowTierMysteryBox', function()
  TriggerServerEvent('razed-mysterybox:GiveLowTierMysteryBox1')
end)

--Premium Tier
RegisterNetEvent('razed-mysterybox:GivePremiumTierMysteryBox', function()
  TriggerServerEvent('razed-mysterybox:GivePremiumTierMysteryBox1')
end)