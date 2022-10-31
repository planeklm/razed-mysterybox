Config = {}
local model = 'a_m_m_business_01'

Config.Status = '^5Version 1.0'
Config.TargetDistance = 1

Config.BlipLocation = {
    vector3(195.66, -1009.5, 29.31),
}

--Blip
Config.Blip = {
blipName = "Mystery Boxes",
blipType = 465,
blipColor = 5,
blipScale = 0.9,
}

Config.Location = {
    [1] = {
        coords = vector4(195.66, -1009.5, 29.31, 160.0),
        model = model,
    },

    -- [2] = {
    --     coords = vector4(x, y, z, w),
    --     model = model,
    -- },
}

--Low Tier Box
Config.LowTierRewards = {
    items = {
    --  {'item_name', chance},
        {'snikkel_candy', 1}, 
        {'sandwich', math.random(1,6)},
        {'twerks_candy', math.random(1,6)},
        {'kurkakola', math.random(1,6)},
    }
}
Config.LowTierPrice = '500'


--High Tier Box
Config.PremiumTierRewards = {
    items = {
    --  {'item_name', chance},
        {'snikkel_candy', math.random(1,6)}, 
        {'phone', math.random(1,6)},
        {'laptop', math.random(1,6)},
        {'diamond_ring', math.random(1,50)},
    }
}
Config.PremiumTierPrice = '2500'